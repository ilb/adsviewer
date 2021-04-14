/**
 * Id use case
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
    const data = await this.dictRepo.descriptionAds({ id: BigInt(request.id) });
    const test = data[0];

    return {
      id: request.id,
      title: test.title,
      description: test.description,
      adsDate: JSON.stringify(test.adsDate),
      phone: test.phone,
      data: test.data,
      links: test.links,
      categoryId: test.categoryId,
      regionId: test.regionId
    };
  }
  async schema(request) {
    const data = await this.dictRepo.descriptionAds({ id: BigInt(request.id) });
    const test = data[0];
    console.log('schema: ', request);

    const schema = {
      title: 'Описание',
      type: 'object',
      properties: {}
    };
    return schema;
  }
}
