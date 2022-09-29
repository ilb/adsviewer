import { getLogger } from '../../libs/logger/logger.mjs';
const logger = getLogger({ name: 'CatalogService' });

export default class CatalogService {
  constructor({
    catalogRepository,
    manufacturerRepository,
    modificationRepository,
    modelRepository,
    transmissionRepository,
    bodyRepository,
    catalogProvider,
    manufacturerMapper,
    modelMapper,
    modificationMapper
  }) {
    this.catalogProvider = catalogProvider;
    this.catalogRepository = catalogRepository;
    this.modelRepository = modelRepository;
    this.manufacturerRepository = manufacturerRepository;
    this.modificationRepository = modificationRepository;
    this.bodyRepository = bodyRepository;
    this.transmissionRepository = transmissionRepository;

    this.manufacturerMapper = manufacturerMapper;
    this.modelMapper = modelMapper;
    this.modificationMapper = modificationMapper;

    this.saveOptions = {
      saveParallel: !!process.env.SAVE_PARALLEL,
      skipDuplicates: !!process.env.SKIP_DUPLICATES
    };
  }

  async loadData() {
    try {
      const data = await this.catalogProvider.getData();
      const makes = data.Catalog.Make;
      const result = this.getData(makes);
      return result;
    } catch (err) {
      console.log(err);
      logger.error(err.message);
    }
  }

  async saveData() {
    const result = await this.loadData();
    if (!result) {
      throw new Error('Данные не загружены');
    }

    const { manufacturers, models, modifications, transmissions, bodies } = result;

    await this.manufacturerRepository.saveMany(manufacturers);
    await this.modelRepository.saveMany(models);
    await this.bodyRepository.saveMany(bodies);
    await this.transmissionRepository.saveMany(transmissions);
    await this.modificationRepository.saveMany(modifications);
  }

  getData(data) {
    // получаем производителей и модели
    const { manufacturers, modelsFromCatalog } = this.getManufacturers(data);
    // Модели и модификации
    const { models, modificationsFromCatalog } = this.getModels(modelsFromCatalog);
    // Модификации
    const { modifications, transmissions, bodies } =
      this.getModificationParams(modificationsFromCatalog);

    return { manufacturers, models, modifications, transmissions, bodies };
  }

  getManufacturers(data) {
    return this.manufacturerMapper.map(data);
  }

  getModels(modelsFromCatalog) {
    return this.modelMapper.map(modelsFromCatalog);
  }

  getModificationParams(modificationsFromCatalog) {
    return this.modificationMapper.map(modificationsFromCatalog);
  }
}
