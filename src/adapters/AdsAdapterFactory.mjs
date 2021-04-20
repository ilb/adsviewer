import AutoAdsApiAdapter from './AutoAdsApiAdapter.mjs';
import DefaultAdsApiAdapter from './DefaultAdsApiAdapter.mjs';

export default class AdsAdapterFactory {
  constructor() {
    // eslint-disable-next-line no-undef
    this.adapers = new Map();
    this.adapers.set(22, new AutoAdsApiAdapter());
    this.defaultAdapter = new DefaultAdsApiAdapter();
  }
  get(categoryId) {
    const adapter = this.adapers[categoryId] || this.defaultAdapter;
    return adapter;
  }
}
