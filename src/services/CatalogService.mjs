export default class CatalogService {
  constructor({ catalogRepository, catalogProvider }) {
    this.catalogProvider = catalogProvider;
    this.catalogRepository = catalogRepository;
    this.saveOptions = {
      saveParallel: !!process.env.SAVE_PARALLEL,
      skipDuplicates: !!process.env.SKIP_DUPLICATES
    };
  };

  async loadData() {
    const data = await this.catalogProvider.getData();
    const makes = data.Catalog.Make;
    const allModifications = makes
      .reduce((accumulator, make) => [...accumulator, ...make.Model], [])
      .reduce((accumulator, model) => [...accumulator, ...model.Generation], [])
      .reduce((accumulator, generation) => [...accumulator, ...generation.Modification], []);
    await this.catalogRepository.saveAll(allModifications, this.saveOptions);
  }
}