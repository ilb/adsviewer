export default class LastDateRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async getDate(name) {
<<<<<<< HEAD
    return this.prisma.lastdatedownload.findFirst({
      where: {
        name
      },
      take: -1,
=======
    return this.prisma.lastload.findUnique({
      where: {
        name
      },
>>>>>>> development
      select: {
        lastloaddate: true
      }
    });
  }
<<<<<<< HEAD
  setDate(name, date) {
    return this.prisma.lastdatedownload.create({
      data: {
        name,
        lastloaddate: date
=======
  setDate(name, lastloaddate) {
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
>>>>>>> development
      }
    });
  }
}
