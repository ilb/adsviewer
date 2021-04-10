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
        select a.id, "data" , "title" , "adsDate", "description" , "phone" , "images" , "price" , "person" , r."name" region, c."name" category
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
        select a.id, "data" , "title" , "adsDate" , "description" , "phone" , "images" , "price" , "person" , r."name" region , c."name" category
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
        select a.id, "data" , "title" , "adsDate" , "description" , "phone" , "images" , "price" , "person" , r."name" region , c."name" category
        from public.ads a
        join public.category c
        on c."name" = ${category}
        join public.region r
        on r.id = a."regionId"
        where a."data" @> ${data}
      `;
    } else {
      return this.prisma.$queryRaw`
        select a.id, "data" , "title" , "adsDate" , "description" , "phone" , "images" , "price" , "person" , r."name" region , c."name" category
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
          price,
          description,
          phone,
          typeId,
          data,
          categoryId,
          region,
          idSource,
          images,
          person
        } = adsItem;

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
            images,
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
    ).catch((e) => {
      throw e;
    });
  }
}
