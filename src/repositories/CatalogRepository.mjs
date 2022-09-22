import CatalogTablesRepository from './CatalogTablesRepository.mjs';
import { getLogger } from '../../libs/logger/logger.mjs';
const logger = getLogger({ name: 'CatalogRepository' });

export default class CatalogRepository extends CatalogTablesRepository {
  constructor({ prisma }) {
    super();
    this.prisma = prisma;
  }

  async getAll({ tableName }) {
    try {
      return await this.prisma[tableName].findMany();
    } catch (err) {
      logger.error(err.message);
    }
  }

  async deleteAll() {
    try {
      await this.prisma.carmodeltransmission.deleteMany({});
      await this.prisma.carmodelbody.deleteMany({});
      await this.prisma.carmanufacturer.deleteMany({});
      await this.prisma.carmodification.deleteMany({});
      await this.prisma.carmodel.deleteMany({});
      await this.prisma.cartransmission.deleteMany({});
      await this.prisma.carbody.deleteMany({});
    } catch (err) {
      logger.error(err.message);
    }
  }

  async saveAll(data, { saveParallel }) {
    if (saveParallel) {
      await this.saveParallel(data);
    } else {
      for (const item of data) {
        console.log(`env SAVE_PARALLEL = false`);
      }
    }
  }

  async saveParallel(data) {
    for (const item of data) {
      await this.createCarmanufacturerRow(item);
      await this.createCartransmissionRow(item);
      await this.createCarbodyRow(item);
      await this.createCarmodelRow(item);
      await this.createCarmodeltransmissionRow(item);
      await this.createCarmodelbodyRow(item);
      await this.createCarmodifications(item);
    }
  }
}
