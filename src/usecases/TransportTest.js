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
    // console.log("ADS", adsitems )
  }

  async schema(request) {
    // console.log("schema: ", request)
    const carsManufacturer = await this.dictRepo.listCarsManufacturer();
    const regions = await this.dictRepo.listRegion();
    const carmodels = await this.dictRepo.listModelByManufacturer(
      request.carmanufacturer ? { name: request.carmanufacturer } : ' '
    );
    const cardescription = await this.dictRepo.listDescriptionByModel(
      request.carmanufacturer && request.carmodel ? { name: request.carmodel } : ' '
    );

    const transmissions = await this.dictRepo.carTransmission();
    const carbody = await this.dictRepo.carBody();
    const transmissionMap = arrayToMap(transmissions);
    const carbodyMap = arrayToMap(carbody);

    const ads = await this.adsRepo.all();
    const adsitems = ads.map(
      ({ id, adsDate, title, description, phone, data, category, region }) => ({
        id,
        adsDate,
        title,
        description,
        phone,
        data,
        category,
        region
      })
    );
    /**
     *
     * @param array
     * @returns new Map
     */
    function arrayToMap(array) {
      const arrMap = new Map();
      array.forEach((element) => {
        arrMap.set(element.id, element.name);
      });
      return arrMap;
    }
    function delDuplicat(arr) {
      // eslint-disable-next-line no-undef
      return Array.from(new Set(arr)).sort();
    } //delete duplicate data items and sort
    function checkModel(func) {
      return request.carmodel ? func : ['Выберите модель'];
    }
    function checkManuf(func) {
      return request.carmanufacturer ? func : ['Выберите производителя'];
    }
    function conCat(arr) {
      return ['...', ...arr];
    }
    const carmanufacturer = conCat(delDuplicat(carsManufacturer.map(({ name }) => name)));
    const region = conCat(regions.map(({ name, code }) => ({ name, code })));
    const carmodel = conCat(
      checkManuf(delDuplicat(carmodels.map(({ carmodel }) => carmodel.map(({ name }) => name))[0]))
    );
    const body = conCat(
      checkModel(
        delDuplicat(
          cardescription.map(({ carmodelbody }) =>
            carmodelbody.map(({ carbodyid }) => carbodyMap.get(carbodyid))
          )[0]
        )
      )
    );
    const transmission = conCat(
      checkModel(
        delDuplicat(
          cardescription.map(({ carmodeltransmission }) =>
            carmodeltransmission.map(({ cartransmissionid }) =>
              transmissionMap.get(cartransmissionid)
            )
          )[0]
        )
      )
    );
    const horse = conCat(
      checkModel(delDuplicat(cardescription.map(({ enginepower }) => enginepower)))
    );
    const volume = conCat(
      checkModel(delDuplicat(cardescription.map(({ enginecapacity }) => enginecapacity.toString())))
    );
    const year = conCat(checkManuf(delDuplicat(['2011', '2011', '2015', '2012', '2016'])));
    const persons = conCat(checkManuf(['1', '2', '3', '4', '5']));
    const adsdata = JSON.stringify(adsitems, (_, v) =>
      typeof v === 'bigint' ? `${v}n` : v
    ).replace(/"(-?\d+)n"/g, (_, a) => a);

    const schema = {
      title: 'Получить оценку',
      type: 'object',
      properties: {
        carmanufacturer: { title: '', type: 'string', enum: carmanufacturer },
        region: { title: '', type: 'string', enum: region },
        carmodel: { title: '', type: 'string', enum: carmodel },
        year: { title: '', type: 'string', enum: year }, //**testing**need*bd**
        body: { title: '', type: 'string', enum: body },
        transmission: { title: '', type: 'string', enum: transmission },
        persons: { title: '', type: 'string', enum: persons }, //**testing**need*bd**
        horse: { title: '', type: 'string', enum: horse },
        volume: { title: '', type: 'string', enum: volume }
      },
      required: ['carmanufacturer']
    };
    return schema;
  }
}
