/**
 * Transport use case
 */
export default class Transport {
  constructor({ dictionaryRepository, adsRepository }) {
    this.dictRepo = dictionaryRepository;
    this.adsRepo = adsRepository;
  }
  /**
   * process use case
   * @param {*} request input params
   */
  async process(request) {
    // const carsManufacturer = await this.dictRepo.listCarsManufacturer();
    // const region = await this.dictRepo.listRegion();
    // const carmodel = await this.dictRepo.listModelByManufacturer(
    //   request.carmanufacturer ? { name: request.carmanufacturer } : ' '
    // );
    // const cardescription = await this.dictRepo.listDescriptionByModel(
    //   request.carmanufacturer && request.carmodel ? { name: request.carmodel } : ' '
    // );
    // const transmission = await this.dictRepo.carTransmission();
    // const carbody = await this.dictRepo.carBody();
    // const transmissionMap = arrayToMap(transmission);
    // const carbodyMap = arrayToMap(carbody);
    const ads = await this.adsRepo.adsFromTransportFilter({
      category: 'Автомобили',
      regionCode: request.region,
      carManufacturer: request.carmanufacturer,
      yearOfProduction: request.year,
      carModel: request.carmodel,
      carBody: upString(request.body),
      carTransmission: upString(request.transmission),
      owners: request.persons
    });
    // console.log("ADS",ads);
    const adsitems = ads.map(
      ({ id, adsDate, title, phone, data, links, category, region, price, person }) => ({
        id,
        adsDate,
        title,
        phone,
        data,
        links,
        category,
        region,
        price,
        person
      })
    );

    // function arrayToMap(array) {
    //   const arrMap = new Map();
    //   array.forEach((element) => {
    //     arrMap.set(element.id, element.name);
    //   });
    //   return arrMap;
    // }
    //
    // function delDuplicat(arr) {
    //   return Array.from(new Set(arr)).sort();
    // }
    //
    // function checkModel(func) {
    //   return (request.carmanufacturer && request.carmodel) ? func : ['Выберите модель'];
    // }
    //
    // function checkManuf(func) {
    //   return request.carmanufacturer ? func : ['Выберите производителя'];
    // }
    //
    // function conCat(arr) {
    //   return ['', ...arr];
    // }
    //
    // function sortName(a, b) {
    //   if (a.name > b.name) {
    //     return 1;
    //   }
    //   if (a.name < b.name) {
    //     return -1;
    //   }
    //   return 0;
    // }

    function upString(string) {
      return string ? string[0].toUpperCase() + string.substring(1) : string;
    }
    return {
      // carmanufacturer: conCat(delDuplicat(carsManufacturer.map(({ name }) => name))),
      // region: conCat(region.map(({ name, code }) => ({ name, code })).sort(sortName)),
      // carmodel: conCat(
      //   checkManuf(delDuplicat(carmodel.map(({ carmodel }) => carmodel.map(({ name }) => name))[0]))
      // ),
      // body: conCat(
      //   checkModel(
      //     delDuplicat(
      //       cardescription.map(({ carmodelbody }) =>
      //         carmodelbody.map(({ carbodyid }) => carbodyMap.get(carbodyid))
      //       )[0]
      //     )
      //   )
      // ),
      // transmission: conCat(
      //   checkModel(
      //     delDuplicat(
      //       cardescription.map(({ carmodeltransmission }) =>
      //         carmodeltransmission.map(({ cartransmissionid }) =>
      //           transmissionMap.get(cartransmissionid)
      //         )
      //       )[0]
      //     )
      //   )
      // ),
      // horse: conCat(checkModel(delDuplicat(cardescription.map(({ enginepower }) => enginepower)))),
      // volume: conCat(
      //   checkModel(
      //     delDuplicat(cardescription.map(({ enginecapacity }) => enginecapacity.toString()))
      //   )
      // ),
      // year: conCat(checkManuf(delDuplicat(['2011', '2011', '2015', '2012', '2016', '2010', '2009', '2008', '2007', '2012', '2013', '2014', '2015', '2017','2018','2019','2020','2021']))),
      // persons: conCat(checkManuf(['1', '2', '3', '4', '5'])),
      adsdata: JSON.stringify(adsitems, (_, v) => (typeof v === 'bigint' ? `${v}n` : v)).replace(
        /"(-?\d+)n"/g,
        (_, a) => a
      )
    };
  }

  async schema(request) {
    // console.log("schema: ", request)

    const carsManufacturer = await this.dictRepo.listCarsManufacturer();
    const region = await this.dictRepo.listRegion();
    const carmodel = await this.dictRepo.listModelByManufacturer(
      request.carmanufacturer ? { name: request.carmanufacturer } : ' '
    );
    const cardescription = await this.dictRepo.listDescriptionByModel(
      request.carmanufacturer && request.carmodel ? { name: request.carmodel } : ' '
    );
    const transmission = await this.dictRepo.carTransmission();
    const carbody = await this.dictRepo.carBody();
    const transmissionMap = arrayToMap(transmission);
    const carbodyMap = arrayToMap(carbody);

    function arrayToMap(array) {
      const arrMap = new Map();
      array.forEach((element) => {
        arrMap.set(element.id, element.name);
      });
      return arrMap;
    }

    function delDuplicat(arr) {
      return Array.from(new Set(arr)).sort();
    }

    function checkModel(func) {
      return (request.carmanufacturer && request.carmodel) ? func : [optionsValue('Выберите модель')];
    }

    function checkManuf(func) {
      return request.carmanufacturer ? func : [optionsValue('Выберите производителя')];
    }

    function conCat(arr) {
      return ['', ...arr];
    }

    function sortName(a, b) {
      if (a.label > b.label) {
        return 1;
      }
      if (a.label < b.label) {
        return -1;
      }
      return 0;
    }

    function optionsValue(name) {
      return { value: name, label: name }
    }

    const schema = {
      title: 'Получить оценку',
      type: 'object',
      properties: {
        carmanufacturer: {
          title: 'Производитель',
          type: 'string',
          options: conCat(delDuplicat(carsManufacturer.map(({ name }) => optionsValue(name) )).sort(sortName)),
          uniforms: {
            search: true
          }},
        region: {
          title: 'Регион',
          type: 'string',
          options: conCat(region.map(({ name, code }) => ({ value: code, label: name })).sort(sortName)),
          uniforms: {
            search: true
          }},
        carmodel: {
          title: 'Модель',
          type: 'string',
          options: conCat(
            checkManuf(delDuplicat(carmodel.map(({ carmodel }) => carmodel.map(({ name }) => optionsValue(name)).sort(sortName))[0]))
          ),
          uniforms: {
            search: true
          }},
        year: {
          title: 'Год',
          type: 'string',
          options: conCat(
            checkManuf(
              delDuplicat(['2011', '2011', '2015', '2012', '2016', '2010', '2009', '2008', '2007', '2012', '2013', '2014', '2015', '2017','2018','2019','2020','2021'])
                .map((name) => optionsValue(name)))),
          uniforms: {
            search: true
          }},
        body: { title: 'Кузов', type: 'string', options: conCat(
            checkModel(
              delDuplicat(
                cardescription.map(({ carmodelbody }) =>
                  carmodelbody.map(({ carbodyid }) => optionsValue(carbodyMap.get(carbodyid)))
                )[0]
              )
            )
          ),
          uniforms: {
            search: true
          }},
        transmission: {
          title: 'Трансмиссия',
          type: 'string',
          options: conCat(
            checkModel(
              delDuplicat(
                cardescription.map(({ carmodeltransmission }) =>
                  carmodeltransmission.map(({ cartransmissionid }) =>
                    optionsValue(transmissionMap.get(cartransmissionid))
                  )
                )[0]
              )
            )
          ),
          uniforms: {
            search: true
          }
        },
        persons: {
          title: 'Количество владельцев по ПТС',
          type: 'string',
          options: conCat(
            checkManuf(['1', '2', '3', '4', '5']
              .map((name) => optionsValue(name)))),
          uniforms: {
            search: true
          }
        },
        horse: {
          title: 'Мощность двигателя',
          type: 'string',
          options: conCat(
            checkModel(
              delDuplicat(cardescription
                .map(({ enginepower }) => optionsValue(enginepower))))),
          uniforms: {
            search: true
          }},
        volume: {
          title: 'Объем двигателя',
          type: 'string',
          options: conCat(
            checkModel(
              delDuplicat(cardescription
                .map(({ enginecapacity }) => optionsValue(enginecapacity.toString())))
            )
          )
        }
      },
      required: ['carmanufacturer', 'carmodel']
    };
    return schema;
  }
}
