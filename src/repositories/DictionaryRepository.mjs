/**
 * DictionaryRepository
 */
export default class DictionaryRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async listCarsManufacturer() {
    return this.prisma.carmanufacturer.findMany();
  }
  async listModelByManufacturer(params) {
    const { name } = params;
    return this.prisma.carmanufacturer.findMany({
      where: {
        name
      },
      include: {
        carmodel: true
      }
    });
  }

  async listDescriptionByModel(params) {
    const { name } = params;
    return this.prisma.carmodel.findMany({
      where: {
        name
      },
      include: {
        carmodelbody: true,
        carmodeltransmission: true
      }
    });
  }

  async listRegion() {
    return this.prisma.region.findMany();
  }

  async descriptionAds(param) {
    const { id } = param;
    return this.prisma.ads.findMany({
      where: {
        id
      }
    });
  }
}
