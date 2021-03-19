export default class AdsRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async search(params) {
    const {} = params;
    return this.prisma.ads.findMany({});
  }


  async save(values) {
  }
}
