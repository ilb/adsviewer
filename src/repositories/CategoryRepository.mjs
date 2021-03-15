/**
 * CategoryRepository
 */
export default class CategoryRepository {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async list() {
    return this.prisma.category.findMany();
  }
}
