export default class AdsRepository {
  constructor({ prisma, regionService, categoryService }) {
    this.prisma = prisma;
    this.regionService = regionService;
    this.categoryService = categoryService;
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
    const { category, regionCode, ...dataArgs } = args;
    function chekData(data) {
      const arrData = {};
      Object.entries(data).forEach(([key, value]) => {
        if (value === 'ВАЗ (LADA)') {
          value = 'ВАЗ';
        }
        if (value !== '') {
          arrData[key] = value;
        }
      });
      return arrData;
    }
    const data = chekData(dataArgs);
    if (
      regionCode &&
      (data.carManufacturer ||
        data.yearOfProduction ||
        data.carModel ||
        data.carBody ||
        data.transmission ||
        data.owners)
    ) {
      return this.prisma.$queryRaw`
        select a.id, "data" , "title" , "adsDate", "description" , "phone" , "links" , "price" , "person" , r."name" region, c."name" category
        from public.ads a
        join public.category c
        on c."name" = ${category}
        join public.region r
        on r.id = a."regionId"
        where a."data" @> ${data} and r.code = ${regionCode}
      `;
    } else if (
      regionCode &&
      !(
        data.carManufacturer &&
        data.yearOfProduction &&
        data.carModel &&
        data.carBody &&
        data.transmission &&
        data.owners
      )
    ) {
      return this.prisma.$queryRaw`
        select a.id, "data" , "title" , "adsDate" , "description" , "phone" , "links" , "price" , "person" , r."name" region , c."name" category
        from public.ads a
        join public.category c
        on c."name" = ${category}
        join public.region r
        on r.id = a."regionId"
        where r.code = ${regionCode}
      `;
    } else if (
      !regionCode &&
      (data.carManufacturer ||
        data.yearOfProduction ||
        data.carModel ||
        data.carBody ||
        data.transmission ||
        data.owners)
    ) {
      return this.prisma.$queryRaw`
        select a.id, "data" , "title" , "adsDate" , "description" , "phone" , "links" , "price" , "person" , r."name" region , c."name" category
        from public.ads a
        join public.category c
        on c."name" = ${category}
        join public.region r
        on r.id = a."regionId"
        where a."data" @> ${data}
      `;
    } else {
      return this.prisma.$queryRaw`
        select a.id, "data" , "title" , "adsDate" , "description" , "phone" , "links" , "price" , "person" , r."name" region , c."name" category
        from public.ads a
        join public.category c
        on c."name" = ${category}
        join public.region r
        on r.id = a."regionId"
      `;
    }
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
   * @param data
   */
  async save(data) {
    // eslint-disable-next-line no-undef
    await Promise.all(
      data.map(async (adsItem) => {
        const {
          title,
          adsDate,
          price,
          description,
          phone,
          typeId,
          data,
          category: categoryName,
          categoryId: categoryIdSource,
          region: regionName,
          idSource,
          links,
          person
        } = adsItem;

        const categoryId = await this.categoryService.getCategoryIdByName(
          categoryName,
          categoryIdSource
        );

        const params = {
          where: {
            idSource
          },
          update: {
            adsDate: new Date(adsDate)
          },
          create: {
            idSource,
            adsDate: new Date(adsDate),
            price,
            person,
            title,
            description,
            phone,
            type: {
              connect: {
                id: typeId
              }
            },
            data: data,
            links,
            category: {
              connect: {
                id: categoryId
              }
            }
          }
        };
        const regionId = await this.regionService.getRegionIdByName(regionName);

        if (regionId) {
          params.create.region = {
            connect: {
              id: regionId
            }
          };
        }
        return await this.prisma.ads.upsert(params);
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
