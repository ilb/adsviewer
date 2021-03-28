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
    }
    return result;
  }

  async schema(request) {
    console.log("schema: ", request)

    function delDuplicat(arr) { return Array.from(new Set(arr)).sort();}  //delete duplicate data items and sort

    const carsManufacturer = await this.dictRepo.listCarsManufacturer()
    const itemCarsManufacturer = delDuplicat(carsManufacturer.map(({name}) => name))

    const region = await this.dictRepo.listRegion()
    const itemRegion = region.map(({name}) => name)

    const initManufacturer = { name: 'Opel' } // initManufacturer
    const carmodel = await this.dictRepo.listModelByManufacturer( request ? { name: request.carmanufacturer } : initManufacturer )
    const itemModel = await delDuplicat(carmodel.map(({carmodel}) => carmodel.map(({name}) => name))[0])

    const initModel = { name: 'Astra' } // initModel
    const cardescription = await this.dictRepo.listDescriptionByModel( request.carmodel ? { name: request.carmodel } : initModel )
    const descriptModelBody = await delDuplicat(cardescription.map(({ carmodelbody }) => carmodelbody.map(({carbodyid}) => carbodyid))[0])
    const descriptModelTransmission = await delDuplicat(cardescription.map(({ carmodeltransmission }) => carmodeltransmission.map(({cartransmissionid}) => cartransmissionid))[0])
    const descriptModelHorse = await delDuplicat(cardescription.map(({ enginepower }) => enginepower))
    const descriptModelV = await delDuplicat(cardescription.map(({ enginecapacity }) => enginecapacity.toString()))

    const testYears = delDuplicat(['2011','2011','2015','2012','2016'])
    const testPersons = ['1','2','3','4','5']

    const schema = {
      title: 'Получить оценку',
      type: 'object',
      properties: {
        carmanufacturer: { title: '', type: 'string', enum: itemCarsManufacturer },
        region: { title: '', type: 'string', enum: itemRegion },
        carmodel: { title: '', type: 'string', enum: itemModel },
        year: { title: '', type: 'string', enum: testYears }, //**testing**need*bd**
        body: { title: '', type: 'string', enum: descriptModelBody },
        transmission: { title: '', type: 'string', enum: descriptModelTransmission },
        persons: { title: '', type: 'string', enum: testPersons }, //**testing**need*bd**
        horse: { title: '', type: 'string', enum: descriptModelHorse },
        volume: { title: '', type: 'string', enum: descriptModelV }
      },
      required: ['carmanufacturer']
    };
    return schema;
  }
}