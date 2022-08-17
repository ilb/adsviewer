import { format } from 'date-fns';
import fs from 'fs';
import path from 'path';
import AdsProvider from './AdsProvider.mjs';

export default class AdsApiProvider extends AdsProvider {
  constructor({ sourceAdsUrl, adsAdapterFactory, uriAccessorFactory }) {
    super({ sourceAdsUrl, adsAdapterFactory, uriAccessorFactory });
    this.dateTimeFormat = 'yyyy-MM-dd HH:mm:ss';
    this.dateTimeFormatLog = 'yyyyMMddHHmmss';
    this.storePath = process.env.LOG_PATH;
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
    this.saveLog(dateFrom, dateTo, resultSource);
    const parse = JSON.parse(resultSource);
    console.log(`(Provider)Get server answer ${parse.code}`);

    if (parse.code !== 200) {
      throw new Error(`${parse.code} : ${parse.error}`);
    }
    const result = parse.data.map((item) => this.adsAdapterFactory.get(item.cat2_id).convert(item));
    return result;
  }
  /**
   * save file
   * @param dateFrom
   * @param dateTo
   * @param data
   */
  saveLog(dateFrom, dateTo, data) {
    const dateFromStr = format(dateFrom, this.dateTimeFormatLog);
    const dateToStr = format(dateTo, this.dateTimeFormatLog);

    const filePath = path.join(this.storePath, 'adsapi_' + dateFromStr + '_' + dateToStr + '.json');
    fs.writeFileSync(filePath, data);
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
    url.searchParams.append('sort', 'asc');

    console.log(`dateFrom: ${dateFromStr}`);
    console.log(`dateTo: ${dateToStr}`);
    return decodeURIComponent(url);
  }
}
