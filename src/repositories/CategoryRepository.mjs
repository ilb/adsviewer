/**
 * CategoryRepository
 */
export default class CategoryRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async getCategoryNames() {
    return this.prisma.category.findMany();
  }

  async save(data) {
    const result = await this.prisma.category.create({
      data
    });
    return result;
  }
}
