/**
 * Transport use case
 */
export default class Transport {
  constructor({ dictionaryRepository }) {
    this.dictionaryRepository = dictionaryRepository;
  }
  /**
   * process use case
   * @param {*} request input params
   */
  async process(request) {
    const result = {};
    if (request.q) {
      // result.rows = await this.dictionaryRepository.search(request.q);
    }
    return result;
  }

  async schema(request) {
    console.log("schema: ", request)

    const carsManufacturer = await this.dictionaryRepository.listCarsManufacturer();
    const itemCarsManufacturer = carsManufacturer.map((item) => {
      return item.name;
    });
    const region = await this.dictionaryRepository.listRegion();
    const itemRegion = region.map((item) => {
      return item.name;
    })
    const carmodel = await this.dictionaryRepository.listModelByManufacturer()
    const itemModel = carmodel.map((item) => {
      return item.name;
    }) //лучше в отдельный HOF с параметрами

    const schema = {
      title: 'Получить оценку',
      type: 'object',
      properties: {
        carmanufacturer: { title: '', type: 'string', enum: itemCarsManufacturer },
        region: { title: '', type: 'string', enum: itemRegion }
        // carmodel: { title: '', type: 'string', enum: itemModel } //
        // year: { title: '', type: 'string', enum: itemModel }, //testing
        // body: { title: '', type: 'string', enum: itemModel }, //*
        // transmission: { title: '', type: 'string', enum: itemModel }, //*
        // persons: { title: '', type: 'string', enum: itemModel }, //*
        // horse: { title: '', type: 'string', enum: itemModel }, //*
        // v: { title: '', type: 'string', enum: itemModel } //*
      }
    };
    return schema;
  }
}