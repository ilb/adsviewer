export default class AdsProvider {
  constructor(sourceAdsUrl, adsAdapter, uriAccessorFactory) {
    this.adsAdapter = adsAdapter;
    this.sourceAdsUrl = sourceAdsUrl;
    this.uriAccessorFactory = uriAccessorFactory;
  }

  async getAdsByDate(dateFrom, dateTo) {}
}
