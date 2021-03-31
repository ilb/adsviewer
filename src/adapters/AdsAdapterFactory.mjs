import AutoAdsApiAdapter from './AutoAdsApiAdapter.mjs';
import DefaultAdsApiAdapter from './DefaultAdsApiAdapter.mjs';

export default class AdsAdapterFactory {
  static categories() {
    return {
      auto: AutoAdsApiAdapter,
      default: DefaultAdsApiAdapter
    };
  }
  create(category = 'default') {
    const Adapter = AdsAdapterFactory.categories()[category];
    return new Adapter();
  }
}
