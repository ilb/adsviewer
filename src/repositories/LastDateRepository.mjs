export default class LastDateRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async getDate(name) {
    return this.prisma.lastload.findUnique({
      where: {
        name
      },
      select: {
        lastloaddate: true
      }
    });
  }
  async setDate(name, lastloaddate) {
    return this.prisma.lastload.upsert({
      where: {
        name
      },
      update: {
        lastloaddate
      },
      create: {
        name,
        lastloaddate
      }
    });
  }
}
