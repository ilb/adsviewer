/**
 * JsonRepository
 */
export default class JsonRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }
  /**
   *
   * @param jsonData
   * @returns array
   */
  async getJsonData(jsonData) {
    return this.prisma.$queryRaw`SELECT * FROM ads WHERE data @> ${jsonData}`;
  }
}
