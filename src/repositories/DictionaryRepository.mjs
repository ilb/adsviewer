
export default class DictionaryRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async listCarsManufacturer() {
    return this.prisma.carmanufacturer.findMany();
  }
}
