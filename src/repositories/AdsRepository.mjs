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
  async saveAll(data, options = {}) {
    if (options.saveParallel) {
      await this.saveParallel(data, options);
    } else {
      for (const item of data) {
        await this.save(item);
      }
    }
  }

  async saveParallel(data, options = {}) {
    const rows = [];
    for (const item of data) {
      rows.push(await this.prepareSaveParallel(item));
    }

    await this.prisma.ads.createMany({
      data: rows,
      skipDuplicates: options.skipDuplicates
    });
  }
  /**
   *
   * @param data
   */
  async prepareSave(adsItem) {
    // console.log({ adsItem });
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
      person,
      idSource2,
      url,
      phoneProtected,
      personTypeId,
      sourceId,
      countSamePhone,
      phoneOperator,
      phoneRegion,
      address,
      city,
      lat,
      lng
    } = adsItem;

    const row = {
      idSource,
      idSource2,
      url,
      phoneProtected,
      personTypeId,
      sourceId,
      countSamePhone,
      phoneOperator,
      phoneRegion,
      address,
      city,
      lat,
      lng,
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
      links
    };
    const categoryId = await this.categoryService.getCategoryIdByName(
      categoryName,
      categoryIdSource
    );

    if (categoryId) {
      row.category = {
        connect: {
          id: categoryId
        }
      };
    }

    const regionId = await this.regionService.getRegionIdByName(regionName);

    if (regionId) {
      row.region = {
        connect: {
          id: regionId
        }
      };
    }
    return row;
  }

  /**
   *
   * @param data
   */
  async prepareSaveParallel(adsItem) {
    // console.log({ adsItem });
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
      person,
      idSource2,
      url,
      phoneProtected,
      personTypeId,
      sourceId,
      countSamePhone,
      phoneOperator,
      phoneRegion,
      address,
      city,
      lat,
      lng
    } = adsItem;

    const row = {
      idSource,
      idSource2,
      url,
      phoneProtected,
      personTypeId,
      sourceId,
      countSamePhone,
      phoneOperator,
      phoneRegion,
      address,
      city,
      lat,
      lng,
      adsDate: new Date(adsDate),
      price,
      person,
      title,
      description,
      phone,
      typeId,
      data: data,
      links
    };
    const categoryId = await this.categoryService.getCategoryIdByName(
      categoryName,
      categoryIdSource
    );

    if (categoryId) {
      row.categoryId = categoryId;
    }

    const regionId = await this.regionService.getRegionIdByName(regionName);

    if (regionId) {
      row.regionId = regionId;
    }
    return row;
  }

  async save(adsItem) {
    const row = await this.prepareSave(adsItem);
    const params = {
      where: {
        idSource: row.idSource
      },
      update: row,
      create: row
    };
    try {
      return await this.prisma.ads.upsert(params);
    } catch (e) {
      console.log('error saving', adsItem, e);
      throw e;
    }
  }
}
