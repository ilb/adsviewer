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
    console.log('TEST descriptionAds', test.data);
    return {
      id: request.id,
      title: test.title,
      description: test.description,
      createdAt: JSON.stringify(test.createdAt),
      phone: test.phone,
      data: test.data,
      images: test.images,
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
