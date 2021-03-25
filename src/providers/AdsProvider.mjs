const fetch = require('node-fetch');

export default class AdsProvider {
  constructor(urlSource, adsAdapter) {
    this.adsAdapter = adsAdapter;
    this.urlSource = urlSource;
  }

  async getAdsByDate(dateFrom, dateTo) {}

  async connection(url) {
    const data = await fetch(url);
    const result = await data.json();
    if (!result) {
      throw new Error('Provider: Data not found');
    }
    if (result.code !== 200) {
      throw new Error(result.error);
    }
    return result;
  }
}
