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

    const carsManufacturer = await this.dictRepo.listCarsManufacturer()
    const itemCarsManufacturer = carsManufacturer.map(({name}) => name)

    const region = await this.dictRepo.listRegion()
    const itemRegion = region.map(({name}) => name)

    const carmodel = await this.dictRepo.listModelByManufacturer({ name: request.carmanufacturer })
    const itemModel = await carmodel.map(({carmodel}) => carmodel.map(({name}) => name))[0]

    const testdata = { name: 'Astra' } // testdata
    const cardescription = await this.dictRepo.listDescriptionByModel(testdata)
    const descriptModelBody = await cardescription.map(({ carmodelbody }) => carmodelbody.map(({carbodyid}) => carbodyid))[0]
    const descriptModelTransmission = await cardescription.map(({ carmodeltransmission }) => carmodeltransmission.map(({cartransmissionid}) => cartransmissionid))[0]
    const descriptModelHorse = await cardescription.map(({ enginepower }) => enginepower)
    const descriptModelV = await cardescription.map(({ enginecapacity }) => enginecapacity.toString())

    const testYears = ['2011','2012','2015']
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