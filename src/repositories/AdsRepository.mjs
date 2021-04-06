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
    const queryCase = args.case;
    const queryRegion = args.region;
    const queryData = {
      carManufacturer: args.carmanufacturer,
      yearOfProduction: args.year,
      carModel: args.carmodel,
      carBody: args.body,
      carTransmission: args.transmission,
      owners: args.persons,
      engineLiters: args.volume
    };
    console.log(args);
    console.log(queryData);
    return this.prisma.$queryRaw(
      'SELECT * FROM "public"."ads" WHERE (("public"."ads"."id") IN (SELECT "t0"."id" FROM "public"."ads" AS "t0" INNER JOIN "public"."category" AS "j0" ON ("j0"."id") = ("t0"."categoryId") WHERE ("j0"."name" = $1 AND "t0"."id" IS NOT NULL)) AND ("public"."ads"."id") IN (SELECT "t0"."id" FROM "public"."ads" AS "t0" INNER JOIN "public"."region" AS "j0" ON ("j0"."id") = ("t0"."regionId") WHERE ("j0"."code" = $2 AND "t0"."id" IS NOT NULL)) AND ("public"."ads"."data") @> $3)',
      queryCase,
      queryRegion,
      queryData
    );
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
