import AutoAdsApiAdapter from './AutoAdsApiAdapter.mjs';

export default class AdsAdapterFactory {
  static categories() {
    return {
      auto: AutoAdsApiAdapter
    };
  }
  create(category = 'auto') {
    const Adapter = AdsAdapterFactory.categories()[category];
    return new Adapter();
  }
}
