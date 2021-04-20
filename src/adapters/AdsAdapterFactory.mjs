import AutoAdsApiAdapter from './AutoAdsApiAdapter.mjs';
import DefaultAdsApiAdapter from './DefaultAdsApiAdapter.mjs';

export default class AdsAdapterFactory {
  constructor() {
    // eslint-disable-next-line no-undef
    this.adapters = new Map();
    this.adapters.set(22, new AutoAdsApiAdapter());
    this.defaultAdapter = new DefaultAdsApiAdapter();
  }
  get(categoryId) {
    // console.log({ categoryId }, this.adapters.get(parseInt(categoryId)));
    const adapter = this.adapters.get(parseInt(categoryId)) || this.defaultAdapter;
    return adapter;
  }
}
