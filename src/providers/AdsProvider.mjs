export default class AdsProvider {
  constructor({ sourceAdsUrl, adsAdapterFactory, uriAccessorFactory }) {
    this.adsAdapterFactory = adsAdapterFactory;
    this.sourceAdsUrl = sourceAdsUrl;
    this.uriAccessorFactory = uriAccessorFactory;
  }

  async getAdsByDate(dateFrom, dateTo) {}
}
