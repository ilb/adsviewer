export default class CatalogRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async getAll() {
    return await this.prisma.carmodel.findMany();
  }

  async deleteAll() {
    await this.prisma.carmodeltransmission.deleteMany({});
    await this.prisma.carmodelbody.deleteMany({});
    await this.prisma.carmanufacturer.deleteMany({});
    await this.prisma.carmodel.deleteMany({});
    await this.prisma.cartransmission.deleteMany({});
    await this.prisma.carbody.deleteMany({});
  }

  async saveAll(data, { saveParallel, skipDuplicates }) {
    if (saveParallel) {
      await this.saveParallel(data, { skipDuplicates });
    } else {
      for (const item of data) {
        console.log(`env SAVE_PARALLEL = false`);
      }
    }
  }

  async saveParallel(data, { skipDuplicates }) {
    const rows = [];
    for (const item of data) {
      rows.push(await this.prepareSaveParallel(item));
    }

    await this.prisma.carmodel.createMany({
      data: rows,
      skipDuplicates: skipDuplicates
    });

    for (const item of data) {
      await this.updateReferences(item);
      await this.updateCarmodelValues(item);
    }
  }

  async updateCarmodelValues(row) {
    const { Modification, BodyType, Transmission, Make } = row;

    const { id: cartransmissionid } = await this.findCartransmissionByName(
      Transmission[0]['_'].toLowerCase()
    );
    const { id: carbodyid } = await this.findCarbodyByName(BodyType[0]['_'].toLowerCase());
    const { id: carmanufacturerid } = await this.findManufactureByCode(Make[0]['_'].toLowerCase());

    await this.prisma.carmodel.update({
      where: { id: Number(Modification[0].id[0]) },
      data: {
        cartransmissionid,
        carbodyid,
        carmanufacturerid
      }
    });
  }

  async updateReferences(row) {
    const { Modification, BodyType, Transmission, Make } = row;

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

    const carmanufacturer = {
      connectOrCreate: {
        create: {
          name: Make[0]['_'].toLowerCase(),
          code: Make[0]['_'].toLowerCase(),
          avitocode: Make[0]['_'].toLowerCase()
        },
        where: {
          code: Make[0]['_'].toLowerCase()
        }
      }
    };

    await this.prisma.carmodel.update({
      where: { id: Number(Modification[0].id[0]) },
      data: {
        carmodelbody,
        carmodeltransmission,
        carmanufacturer
      }
    });
  }

  async prepareSaveParallel(catalogItem) {
    const { Model, Generation, Modification, Power, EngineSize } = catalogItem;

    return {
      id: Number(Modification[0].id[0]),
      name: Model[0]['_'],
      code: null,
      enginecapacity: EngineSize[0]['_'],
      enginepower: Number(Power[0]['_']),
      avitocode: null,
      carbodyid: null,
      cartransmissionid: null,
      carmodelgeneration: Generation[0]['_'],
      carmodelmodification: Modification[0]['_']
    };
  }

  async findCartransmissionByName(name) {
    return await this.prisma.cartransmission.findUnique({
      where: {
        name
      }
    });
  }

  async findManufactureByCode(code) {
    return await this.prisma.carmanufacturer.findUnique({
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
}
