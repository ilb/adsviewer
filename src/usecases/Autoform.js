export default class Autoform {
  constructor({ dictionaryRepository }) {
    this.dictionaryRepository = dictionaryRepository;
  }

  async process(request) {
    const result = {};
    if (request.q) {
      // result.rows = await this.dictionaryRepository.search(request.q);
    }
    return result;
  }

  async schema(request) {
    const carsManufacturer = await this.dictionaryRepository.listCarsManufacturer();
    const itemCarsManufacturer = carsManufacturer.map((item) => {
      return item.name;
    });
    const schema = {
      title: 'Поиск объявлений',
      type: 'object',
      properties: {
        category: { title: 'Категория', type: 'string', enum: itemCarsManufacturer },
        q: { title: 'Поиск по объявлениям', type: 'string', minLength: 1 }
      },
      required: ['q']
    };
    return schema;
  }
}