import AdsProvider from './AdsProvider.mjs';

export default class AdsApiProvider extends AdsProvider {
  constructor(sourceAdsUrl, adsAdapter, uriAccessorFactory) {
    super(sourceAdsUrl, adsAdapter, uriAccessorFactory);
  }
  /**
   *
   * @param dateFrom
   * @param dateTo
   * @returns Object with convert data
   */
  async getAdsByDate(dateFrom, dateTo) {
    const url = await this.setUrlParams(dateFrom, dateTo);
    const uriAccessor = this.uriAccessorFactory.getUriAccessor(url);
    const result = await uriAccessor.getContent();
    const parse = JSON.parse(result);

    return await this.adsAdapter.convert(parse.data);
  }
  /**
   *
   * @param dateFrom
   * @param dateTo
   * @return string url
   */
  async setUrlParams(dateFrom, dateTo) {
    const url = new URL(this.sourceAdsUrl);

    if (dateFrom) {
      url.searchParams.append('date1', dateFrom);
    }
    if (dateTo) {
      url.searchParams.append('date2', dateTo);
    }
    return url.toString();
  }
}
