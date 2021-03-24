export default class LastDateRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async getDate(name) {
    return this.prisma.lastdatedownload.findFirst({
      where: {
        name
      },
      take: -1,
      select: {
        lastloaddate: true
      }
    });
  }
  setDate(name, date) {
    return this.prisma.lastdatedownload.create({
      data: {
        name,
        lastloaddate: date
      }
    });
  }
}
