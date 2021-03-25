import AdsProvider from './AdsProvider';

export default class AdsApiProvider extends AdsProvider {
  constructor(urlSource, adsAdapter) {
    super(urlSource, adsAdapter);
  }

  async getAdsByDate(dateFrom, dateTo) {
    const url = await this.addedSearchParams(dateFrom, dateTo);
    const result = await super.connection(url);
    return await this.adsAdapter.convert(result.data);
  }

  async addedSearchParams(dateFrom, dateTo) {
    const url = new URL(this.urlSource);

    if (dateFrom) {
      url.searchParams.append('date1', dateFrom);
    }
    if (dateTo) {
      url.searchParams.append('date2', dateTo);
    }
    return url;
  }
}
