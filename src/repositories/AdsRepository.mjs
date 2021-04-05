export default class AdsRepository {
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
    if (args.carmanufacturer) {
      //необходим составной индекс
      // findArgs = {
      //   ...findArgs,
      //   where: {
      //     ...findArgs.where,
      //     data:
      //       {
      //         carManufacturer: args.carmanufacturer
      //       }
      //   }
      // }
    }
    if (args.carmodel) {
    }
    if (args.body) {
    }
    if (args.horse) {
    }
    if (args.persons) {
    }
    if (args.transmission) {
    }
    if (args.volume) {
    }
    if (args.year) {
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

    return this.prisma.ads.findMany(findArgs);
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
