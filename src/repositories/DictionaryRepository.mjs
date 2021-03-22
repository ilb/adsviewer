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

  async listRegion() {
    return this.prisma.region.findMany();
  }

  async listModelByManufacturer() {
    return this.prisma.carmodel.findMany();
  } //test
}
