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

  async createCartransmissionRow(data) {
    const carTransmissionRow = await this.prepareSaveParallel(data, {
      tableName: 'cartransmission'
    });
    await this.prisma.cartransmission.upsert({
      where: {
        name: carTransmissionRow.name
      },
      update: carTransmissionRow,
      create: carTransmissionRow
    });
  }

  async createCarbodyRow(data) {
    const carBodyRow = await this.prepareSaveParallel(data, {
      tableName: 'carbody'
    });

    await this.prisma.carbody.upsert({
      where: {
        name: carBodyRow.name
      },
      update: carBodyRow,
      create: carBodyRow
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

  async createCarmodeltransmissionRow(data) {
    const { Model, Transmission } = data;

    const currentCarmodel = await this.findCarmodelByCode(Model[0]['_']);
    const currentCartransmission = await this.findCartransmissionByName(
      Transmission[0]['_'].toLowerCase()
    );

    const carmodeltransmission = {
      connectOrCreate: {
        create: {
          cartransmission: {
            connect: { name: Transmission[0]['_'].toLowerCase() }
          }
        },
        where: {
          carmodelid_cartransmissionid: {
            carmodelid: currentCarmodel.id,
            cartransmissionid: currentCartransmission.id
          }
        }
      }
    };

    await this.prisma.carmodel.update({
      where: { code: Model[0]['_'] },
      data: {
        carmodeltransmission
      }
    });
  }

  async createCarmodelbodyRow(data) {
    const { Model, BodyType } = data;

    const currentCarmodel = await this.findCarmodelByCode(Model[0]['_']);
    const currentCarbody = await this.findCarbodyByName(BodyType[0]['_'].toLowerCase());

    const carmodelbody = {
      connectOrCreate: {
        create: {
          carbody: {
            connect: { name: BodyType[0]['_'].toLowerCase() }
          }
        },
        where: {
          carmodelid_carbodyid: {
            carmodelid: currentCarmodel.id,
            carbodyid: currentCarbody.id
          }
        }
      }
    };

    await this.prisma.carmodel.update({
      where: { code: Model[0]['_'] },
      data: {
        carmodelbody
      }
    });
  }

  async createCarmodifications(data) {
    const carModificationRow = await this.prepareSaveParallel(data, {
      tableName: 'carmodification'
    });

    await this.prisma.carmodification.upsert({
      where: {
        id: carModificationRow.id
      },
      update: carModificationRow,
      create: carModificationRow
    });
  }

  async prepareSaveParallel(catalogItem, { tableName }) {
    const {
      YearFrom,
      Generation,
      Modification,
      Make,
      Model,
      Power,
      EngineSize,
      Transmission,
      BodyType
    } = catalogItem;

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
      case 'cartransmission':
        return {
          name: Transmission[0]['_'].toLowerCase(),
          code: Transmission[0]['_'].toLowerCase(),
          avitocode: Transmission[0]['_'].toLowerCase()
        };
      case 'carbody':
        return {
          name: BodyType[0]['_'].toLowerCase(),
          code: BodyType[0]['_'].toLowerCase(),
          avitocode: BodyType[0]['_'].toLowerCase()
        };
      case 'carmodification':
        return {
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
    }
  }

  async findCarmodelByCode(code) {
    return await this.prisma.carmodel.findUnique({
      where: {
        code
      }
    });
  }

  async findCarbodyByName(name) {
    return await this.prisma.carbody.findUnique({
      where: {
        name
      }
    });
  }

  async findCartransmissionByName(name) {
    return await this.prisma.cartransmission.findUnique({
      where: {
        name
      }
    });
  }
}
