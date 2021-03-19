import mysql from 'serverless-mysql';

export default class AdsRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async search(params) {
    const {} = params;
    return this.prisma.ads.findMany({});
  }

  async list(params) {
    const results = await this.connect.query(`select * from ADS where ?`, params);
    await this.connect.end();
    return results;
  }

  async save(values) {}
}
