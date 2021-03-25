/**
 * Transport use case
 */
export default class Transport {
  constructor({ dictionaryRepository }) {
    this.dictRepo = dictionaryRepository;
  }
  /**
   * process use case
   * @param {*} request input params
   */
  async process(request) {
    const result = {};
    if (request) {
      // result.rows = await this.dictionaryRepository.search(request.q);
    }
    return result;
  }

  async schema(request) {
    console.log("schema: ", request)

    const carsManufacturer = await this.dictRepo.listCarsManufacturer()
    const itemCarsManufacturer = carsManufacturer.map(({name}) => name)

    const region = await this.dictRepo.listRegion()
    const itemRegion = region.map(({name}) => name)

    const testdataname = {name: 'Mitsubishi'} // must be a props
    const carmodel = await this.dictRepo.listModelByManufacturer(request)
    const itemModel = carmodel.map(({carmodel}) => carmodel.map(({name}) => name))[0]

     //лучше в отдельный HOF с параметрами

    const schema = {
      title: 'Получить оценку',
      type: 'object',
      properties: {
        carmanufacturer: { title: '', type: 'string', enum: itemCarsManufacturer },
        region: { title: '', type: 'string', enum: itemRegion },
        carmodel: { title: '', type: 'string', enum: itemModel } //
        // year: { title: '', type: 'string', enum: itemModel }, //testing
        // body: { title: '', type: 'string', enum: itemModel }, //*
        // transmission: { title: '', type: 'string', enum: itemModel }, //*
        // persons: { title: '', type: 'string', enum: itemModel }, //*
        // horse: { title: '', type: 'string', enum: itemModel }, //*
        // v: { title: '', type: 'string', enum: itemModel } //*
        , w: { title: 'Поиск по объявлениям', type: 'string', minLength: 1 }
      },
      required: ['carmanufacturer']
    };
    return schema;
  }
}