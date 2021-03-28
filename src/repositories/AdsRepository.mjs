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
    // eslint-disable-next-line no-undef
    await Promise.all(
      data.map(async (adsItem) => {
        const { title, adsDate, description, phone, type, params, categoryId, region } = adsItem;
        return await this.prisma.ads.create({
          data: {
            title: title,
            adsDate: new Date(adsDate),
            description,
            phone: Number(phone),
            type: {
              connect: {
                name: type
              }
            },
            data: params,
            category: {
              connect: {
                avitoId: categoryId
              }
            },
            region: {
              connect: {
                name: region
              }
            }
          }
        });
      })
    );
    await this.save()
      .catch((e) => {
        throw e;
      })
      .finally(async () => {
        await this.prisma.$disconnect();
      });
  }
}
