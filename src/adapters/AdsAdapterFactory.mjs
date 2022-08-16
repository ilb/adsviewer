export default class AdsAdapterFactory {
  constructor({ autoAdsApiAdapter, defaultAdsApiAdapter }) {
    // eslint-disable-next-line no-undef
    this.adapters = new Map();
    this.adapters.set(22, autoAdsApiAdapter);
    this.defaultAdapter = defaultAdsApiAdapter;
  }
  get(categoryId) {
    // console.log({ categoryId }, this.adapters.get(parseInt(categoryId)));
    const adapter = this.adapters.get(parseInt(categoryId)) || this.defaultAdapter;
    return adapter;
  }
}
