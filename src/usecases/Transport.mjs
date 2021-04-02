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
    function delDuplicat(arr) { return Array.from(new Set(arr)).sort(); }  //delete duplicate data items and sort
    function checkModel(func) { return request.carmodel ? func : ['Выберите модель'] }
    function checkManuf(func) { return request.carmanufacturer ? func : ['Выберите производителя'] }
    function conCat(arr) {return ['...', ...arr]}
    const carsManufacturer = await this.dictRepo.listCarsManufacturer()
    const region = await this.dictRepo.listRegion()
    const carmodel = await this.dictRepo.listModelByManufacturer( request.carmanufacturer ? { name: request.carmanufacturer } : ' ' )
    const cardescription = await this.dictRepo.listDescriptionByModel( (request.carmanufacturer && request.carmodel) ? { name: request.carmodel } : ' ' )
    return {
      carmanufacturer: conCat(delDuplicat(carsManufacturer.map(({ name }) => name))),
      region: region.map(({ name, code }) => ({ name, code })),
      carmodel: conCat(checkManuf(await delDuplicat(carmodel.map(({carmodel}) => carmodel.map(({name}) => name))[0]))),
      body: conCat(checkModel(await delDuplicat(cardescription.map(({ carmodelbody }) => carmodelbody.map(({carbodyid}) => carbodyid))[0]))),
      transmission: conCat(checkModel(await delDuplicat(cardescription.map(({ carmodeltransmission }) => carmodeltransmission.map(({cartransmissionid}) => cartransmissionid))[0]))),
      horse: conCat(checkModel(await delDuplicat(cardescription.map(({ enginepower }) => enginepower)))),
      volume: conCat(checkModel(await delDuplicat(cardescription.map(({ enginecapacity }) => enginecapacity.toString())))),
      year: conCat(checkManuf(delDuplicat(['2011','2011','2015','2012','2016']))),
      persons: conCat(checkManuf([ '1', '2', '3', '4', '5']))
    };
  }

  async schema(request) {
    console.log("schema: ", request)


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