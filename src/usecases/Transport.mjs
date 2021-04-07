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
    console.log('request from process', request);
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
    const ads = await this.adsRepo.adsFromTransportFilter({
      case: 'Автомобили',
      region: request.region,
      carmanufacturer: request.carmanufacturer,
      year: request.year,
      carmodel: request.carmodel,
      body: request.body,
      transmission: request.transmission,
      persons: request.persons
    }); //нет составных индексов
    console.log(ads);
    const adsitems = ads.map(({ id, adsDate, title, phone, data, category, region }) => ({
      id,
      adsDate,
      title,
      phone,
      data,
      category,
      region
    }));

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
      return request.carmodel ? func : ['Выберите модель'];
    }

    function checkManuf(func) {
      return request.carmanufacturer ? func : ['Выберите производителя'];
    }

    function conCat(arr) {
      return ['...', ...arr];
    }

    return {
      carmanufacturer: conCat(delDuplicat(carsManufacturer.map(({ name }) => name))),
      region: conCat(region.map(({ name, code }) => ({ name, code }))),
      carmodel: conCat(
        checkManuf(delDuplicat(carmodel.map(({ carmodel }) => carmodel.map(({ name }) => name))[0]))
      ),
      body: conCat(
        checkModel(
          delDuplicat(
            cardescription.map(({ carmodelbody }) =>
              carmodelbody.map(({ carbodyid }) => carbodyMap.get(carbodyid))
            )[0]
          )
        )
      ),
      transmission: conCat(
        checkModel(
          delDuplicat(
            cardescription.map(({ carmodeltransmission }) =>
              carmodeltransmission.map(({ cartransmissionid }) =>
                transmissionMap.get(cartransmissionid)
              )
            )[0]
          )
        )
      ),
      horse: conCat(checkModel(delDuplicat(cardescription.map(({ enginepower }) => enginepower)))),
      volume: conCat(
        checkModel(
          delDuplicat(cardescription.map(({ enginecapacity }) => enginecapacity.toString()))
        )
      ),
      year: conCat(checkManuf(delDuplicat(['2011', '2011', '2015', '2012', '2016']))),
      persons: conCat(checkManuf(['1', '2', '3', '4', '5'])),
      adsdata: JSON.stringify(adsitems, (_, v) => (typeof v === 'bigint' ? `${v}n` : v)).replace(
        /"(-?\d+)n"/g,
        (_, a) => a
      )
    };
  }

  async schema(request) {
    // console.log("schema: ", request)

    const schema = {
      title: 'Получить оценку',
      type: 'object',
      properties: {
        // carmanufacturer: { title: '', type: 'string', enum: itemCarsManufacturer },
        // region: { title: '', type: 'string', enum: itemRegion },
        // carmodel: { title: '', type: 'string', enum: itemModel },
        // year: { title: '', type: 'string', enum: testYears }, //**testing**need*bd**
        // body: { title: '', type: 'string', enum: descriptModelBody },
        // transmission: { title: '', type: 'string', enum: descriptModelTransmission },
        // persons: { title: '', type: 'string', enum: testPersons }, //**testing**need*bd**
        // horse: { title: '', type: 'string', enum: descriptModelHorse },
        // volume: { title: '', type: 'string', enum: descriptModelV }
      },
      required: ['carmanufacturer']
    };
    return schema;
  }
}
