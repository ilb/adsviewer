import { format } from 'date-fns';
import AdsProvider from './AdsProvider.mjs';

export default class AdsApiProvider extends AdsProvider {
  constructor(sourceAdsUrl, adsAdapterFactory, uriAccessorFactory) {
    super(sourceAdsUrl, adsAdapterFactory, uriAccessorFactory);
    this.dateTimeFormat = 'yyyy-MM-dd hh:mm:ss';
  }
  /**
   *
   * @param dateFrom
   * @param dateToi
   * @returns Object with convert data
   */
  async getAdsByDate(dateFrom, dateTo) {
    const url = await this.setUrlParams(dateFrom, dateTo);
    console.log('Loading ', url);
    const uriAccessor = this.uriAccessorFactory.getUriAccessor(url);
    const resultSource = await uriAccessor.getContent();
    const parse = JSON.parse(resultSource);
    console.log(`(Provider)Get server answer ${parse.code}`);

    if (parse.code !== 200) {
      throw new Error(`${parse.code} : ${parse.error}`);
    }
    const result = parse.data.map((item) => this.adsAdapterFactory.get(item.cat2_id).convert(item));
    return result;
  }
  /**
   *
   * @param dateFrom
   * @param dateTo
   * @return string url
   */
  async setUrlParams(dateFrom, dateTo) {
    const url = new URL(this.sourceAdsUrl);

    const dateFromStr = format(dateFrom, this.dateTimeFormat);
    const dateToStr = format(dateTo, this.dateTimeFormat);

    url.searchParams.append('date1', dateFromStr);
    url.searchParams.append('date2', dateToStr);

    console.log(`dateFrom: ${dateFromStr}`);
    console.log(`dateTo: ${dateToStr}`);
    return decodeURIComponent(url);
  }
}
