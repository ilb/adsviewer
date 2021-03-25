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
    const { name } = params
    return this.prisma.carmanufacturer.findMany({
      where: {
        name
      },
      include: {
        carmodel: true
      }
    });
  } //test

  async listRegion() {
    return this.prisma.region.findMany();
  }


}
