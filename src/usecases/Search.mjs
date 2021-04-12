/**
 * Search use case
 */
export default class Search {
  constructor({ categoryRepository, adsRepository }) {
    this.categoryRepository = categoryRepository;
    this.adsRepo = adsRepository;
  }
  /**
   * process use case
   * @param {*} request input params
   */
  async process(request) {
    const ads = await this.adsRepo.all(request.search); //test
    const adsitems = ads.map(({ id, adsDate, title, phone, data, links, category, region }) => ({
      id,
      adsDate,
      title,
      phone,
      data,
      links,
      category,
      region
    }));
    return {
      data: 'test resolve search page',
      adsdata: JSON.stringify(adsitems, (_, v) => (typeof v === 'bigint' ? `${v}n` : v)).replace(
        /"(-?\d+)n"/g,
        (_, a) => a
      )
    };
  }

  async schema(request) {
    console.log('schema: ', request);
    const categoryNames = await this.categoryRepository.getCategoryNames();
    const itemNames = categoryNames.map((item) => {
      return item.name;
    });
    const schema = {
      title: 'Поиск объявлений',
      type: 'object',
      properties: {
        category: { title: 'Категория', type: 'string', enum: itemNames },
        search: { title: 'Поиск по объявлениям', type: 'string' }
      },
      required: ['search']
    };
    return schema;
  }
}
