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
}
