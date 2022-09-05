export default class CatalogRepository {
  constructor({prisma}) {
    this.prisma = prisma;
  }

  async saveAll(data, options = {}) {
    if (options.saveParallel) {
      await this.saveParallel(data, options);
    } else {
      for (const item of data) {
        await this.save(item);
      }
    }
  }

  async saveParallel(data, options = {}) {
    const rows = [];
    for (const item of data) {
      rows.push(await this.prepareSaveParallel(item));
    }

    await this.prisma.carmodel.createMany({
      data: rows,
      skipDuplicates: options.skipDuplicates
    });
  }

  async prepareSaveParallel(catalogItem) {
    const {
      Make,
      Model,
      Generation,
      FuelType,
      Transmission,
      Modification,
      Power,
      EngineSize,
      BodyType
    } = catalogItem;

    const carmanufacturer = await this.findManufactureByCode(Make[0]['_'].toLowerCase());
    const carbody = await this.findCarbodyByName(BodyType[0]['_'].toLowerCase());
    const cartransmission = await this.findCartransmissionByName(Transmission[0]['_'].toLowerCase());

    return {
      id: Modification[0].id,
      name: Make[0]['_'],
      code: null,
      enginecapacity: EngineSize[0]['_'],
      enginepower: Power[0]['_'],
      avitocode: null,
      carmanufacturerid: carmanufacturer.id,
      carbodyid: carbody.id,
      cartransmissionid: cartransmission.id,
      carmodelgeneration: Generation[0]['_'],
      carmodelmodification: Modification[0]['_']
    }
  }

  async findCartransmissionByName(name) {
    return await this.prisma.cartransmission.findFirst({
      where: {
        name
      },
    })
  }

  async findManufactureByCode(code) {
    return await this.prisma.carmanufacturer.findFirst({
      where: {
        code
      },
    })
  }

  async findCarbodyByName(name) {
    return await this.prisma.carbody.findFirst({
      where: {
        name
      }
    })
  }
}