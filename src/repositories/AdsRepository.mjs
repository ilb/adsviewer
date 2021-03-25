import mysql from 'serverless-mysql';

export default class AdsRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async search(params) {
    const { title, description, categoryId } = params;
    return this.prisma.ads.findMany({
      where: {
        title: {
          contains: title
        },
        description: {
          contains: description
        },
        categoryId
      }
    });
  }

  async save(data) {
    return this.prisma.ads.create({
      data: {
        data
      }
    });
  }
}
