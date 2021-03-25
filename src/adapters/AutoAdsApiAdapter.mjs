export default class AutoAdsApiAdapter {
  async convert(data) {
    if (!data) {
      throw new Error('Adapter: no data from provider');
    }
    return data.map((ads) => ({
      title: ads.title,
      description: ads.description,
      phone: ads.phone || '89xxxxxxxx',
      type: ads.nedvigimost_type,
      data: ads.params,
      category: ads.cat1,
      region: ads.region
    }));
  }
}
