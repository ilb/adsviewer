import xml2js from 'xml2js';

export default class CatalogAdapter {
  constructor() {}
  /**
   *
   * @param {XML} data
   * @returns Object
   */
  async convert(data) {
    // var parser = new xml2js.Parser();
    const parser = new xml2js.Parser();
    const result = await parser.parseStringPromise(data);

    return result;
  }
}
