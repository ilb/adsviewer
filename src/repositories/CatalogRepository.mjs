import { getLogger } from '../../libs/logger/logger.mjs';
const logger = getLogger({ name: 'CatalogRepository' });

export default class CatalogRepository {
  constructor({ prisma }) {
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

  async createCarmanufacturerRow(data) {
    const carManufacturerRow = await this.prepareSaveParallel(data, {
      tableName: 'carmanufacturer'
    });
    await this.prisma.carmanufacturer.upsert({
      where: {
        code: carManufacturerRow.code
      },
      update: carManufacturerRow,
      create: carManufacturerRow
    });
  }

  async createCarmodelRow(data) {
    const carModelRow = await this.prepareSaveParallel(data, { tableName: 'carmodel' });
    await this.prisma.carmodel.upsert({
      where: {
        code: carModelRow.code
      },
      update: carModelRow,
      create: carModelRow
    });
  }

  async saveParallel(data) {
    for (const item of data) {
      await this.createCarmanufacturerRow(item);
      await this.createCarmodelRow(item);
      await this.updateReferences(item);
      await this.createCarmodifications(item);
    }
  }

  async createCarmodifications(catalogItem) {
    const { Modification, Model, Transmission, BodyType, YearFrom, Generation, Power, EngineSize } =
      catalogItem;

    const itemData = {
      id: Number(Modification[0].id[0]),
      carmodel: { connect: { code: Model[0]['_'] } },
      cartransmission: { connect: { name: Transmission[0]['_'].toLowerCase() } },
      carbody: { connect: { name: BodyType[0]['_'].toLowerCase() } },
      caryear: Number(YearFrom[0]['_']),
      enginecapacity: EngineSize[0]['_'],
      enginepower: Number(Power[0]['_']),
      name: Model[0]['_'],
      generation: Generation[0]['_']
    };

    await this.prisma.carmodification.upsert({
      where: {
        id: Number(Modification[0].id[0])
      },
      update: itemData,
      create: itemData
    });
  }

  async updateReferences(row) {
    const { Model, BodyType, Transmission } = row;

    const carmodeltransmission = {
      create: [
        {
          cartransmission: {
            connectOrCreate: {
              create: {
                name: Transmission[0]['_'].toLowerCase(),
                code: Transmission[0]['_'].toLowerCase(),
                avitocode: Transmission[0]['_'].toLowerCase()
              },
              where: { name: Transmission[0]['_'].toLowerCase() }
            }
          }
        }
      ]
    };

    const carmodelbody = {
      create: [
        {
          carbody: {
            connectOrCreate: {
              create: {
                name: BodyType[0]['_'].toLowerCase(),
                code: BodyType[0]['_'].toLowerCase(),
                avitocode: BodyType[0]['_'].toLowerCase()
              },
              // В схеме у присоединенной таблицы "carbody" поле "name" должно быть @unique
              where: { name: BodyType[0]['_'].toLowerCase() }
            }
          }
        }
      ]
    };

    await this.prisma.carmodel.update({
      where: { code: Model[0]['_'] },
      data: {
        carmodelbody,
        carmodeltransmission
      }
    });
  }

  async prepareSaveParallel(catalogItem, { tableName }) {
    const { Make, Model, Power, EngineSize } = catalogItem;

    switch (tableName) {
      case 'carmodel':
        return {
          name: Model[0]['_'],
          code: Model[0]['_'],
          enginecapacity: EngineSize[0]['_'],
          enginepower: Number(Power[0]['_']),
          avitocode: null,
          carmanufacturer: {
            connect: {
              code: Make[0]['_'].toLowerCase()
            }
          }
        };
      // carmanufacturerid - появится автоматически
      case 'carmanufacturer':
        return {
          name: Make[0]['_'].toLowerCase(),
          code: Make[0]['_'].toLowerCase(),
          avitocode: Make[0]['_'].toLowerCase()
        };
    }
  }
}
