export default class RegionRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }
  /**
   *
   * @returns array
   */
  async regionNameList() {
    return await this.prisma.region.findMany({
      select: {
        id: true,
        name: true
      }
    });
  }

  async save(data) {
    const region = await this.prisma.region.create({
      data
    });
    return region;
  }
}
