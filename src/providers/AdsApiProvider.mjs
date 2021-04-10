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
    console.log('Send query to server');
    const uriAccessor = this.uriAccessorFactory.getUriAccessor(url);
    const result = await uriAccessor.getContent();
    const parse = JSON.parse(result);
    console.log(`(Provider)Get server ansver ${parse.code}`);

    if (parse.data === [] && parse.code === 200) {
      throw new Error('Нед данных за указанный период времени либо еще не добавлены');
    }
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

    console.log(`dateFrom: ${dateFrom}`);
    console.log(`dateFrom: ${dateTo}`);
    console.log(url.toString());
    return url.toString();
  }
}
