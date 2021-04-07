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
          },
          region: {
            code: args.region
          },
          autoData: {
            carManufacturer: args.carmanufacturer,
            yearOfProduction: args.year,
            carModel: args.carmodel,
            carBody: args.body,
            carTransmission: args.transmission,
            owners: args.persons,
            engineLiters: args.volume
          }
        },
        include: {
          region: true
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
        const {
          title,
          adsDate,
          description,
          phone,
          typeId,
          data,
          categoryId,
          region,
          idSource
        } = adsItem;

        const {
          doorCount,
          usedType,
          carModel,
          carBody,
          condition,
          carTransmission,
          yearOfProduction,
          carManufacturer,
          wheelPosition,
          driveAuto,
          carEngineType,
          carMileage,
          owners,
          engineLiters,
          color
        } = data;
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
            autoData: {
              create: {
                idSource,
                doorCount,
                usedType,
                carModel,
                carBody,
                condition,
                carTransmission,
                yearOfProduction,
                carManufacturer,
                wheelPosition,
                driveAuto,
                carEngineType,
                carMileage,
                owners,
                engineLiters,
                color
              }
            },
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
