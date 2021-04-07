export default class AdsRepositoryTest {
  constructor({ prisma }) {
    this.prisma = prisma;
  }

  async all(arg) {
    return this.prisma.ads.findMany({
      where: {
        title: {
          contains: arg,
          mode: 'insensitive'
        }
      },
      include: {
        region: true
      }
    });
  }

  async adsFromTransportFilter(args) {
    const queryData = {
      carManufacturer: args.carmanufacturer,
      yearOfProduction: args.year,
      carModel: args.carmodel,
      carBody: args.body,
      carTransmission: args.transmission,
      owners: args.persons,
      engineLiters: args.volume
    };
    let findArgs = {};
    if (args.case) {
      findArgs = {
        where: {
          category: {
            name: args.case
          }
        },
        include: {
          region: true
        }
      };
    }
    if (args.region) {
      findArgs = {
        ...findArgs,
        where: {
          ...findArgs.where,
          region: {
            code: args.region
          }
        }
      };
    }
    const [data, caseRegion] = await this.prisma.$transaction([
      this.prisma.ads.findMany(findArgs),
      this.prisma.$queryRaw`SELECT * FROM ads WHERE data @> ${queryData}`
    ]);
    return [caseRegion, data];
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
  /**
   *
   * @returns array
   */
  async regionList() {
    return this.prisma.region.findMany({
      select: {
        id: true,
        name: true
      }
    });
  }
  /**
   *
   * @param data
   */
  async save(data) {
    const regions = await this.regionList();
    // eslint-disable-next-line no-undef
    const regionsMap = new Map();
    regions.forEach((item) => {
      regionsMap.set(item.name, item.id);
    });
    // eslint-disable-next-line no-undef
    await Promise.all(
      data.map(async (adsItem) => {
        // eslint-disable-next-line prettier/prettier
        const { title, adsDate, description, phone, typeId, data, categoryId, region, idSource } = adsItem;
        const regionId = regionsMap.get(region);
        return await this.prisma.ads.upsert({
          where: {
            idSource
          },
          update: {
            adsDate: new Date(adsDate)
          },
          create: {
            idSource,
            adsDate: new Date(adsDate),
            title,
            description,
            phone,
            type: {
              connect: {
                id: typeId
              }
            },
            data: data,
            category: {
              connect: {
                id: categoryId
              }
            },
            region: {
              connect: {
                id: regionId
              }
            }
          }
        });
      })
    )
      .catch((e) => {
        throw e;
      })
      .finally(async () => {
        await this.prisma.$disconnect();
      });
  }
}
