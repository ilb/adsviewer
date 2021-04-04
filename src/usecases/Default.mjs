/**
 * Default use case
 */
export default class Default {
  /**
   * process use case
   * @param {*} request input params
   */
  async process(request) {
    return {
      data: ['Автомобили']
    };
  }
  async schema(request) {
    console.log("schema: ", request)
    const schema = {
      title: 'Default',
      type: 'object',
      properties: {
      }
    };
    return schema;
  }
}