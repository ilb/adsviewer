export default class DefaultAdsApiAdapter {
  /**
   *
   * @param data
   * @returns Object with convert data
   */
  async convert(data) {
    if (!data) {
      throw new Error('Adapter: no data from provider');
    }
    return data.map((ads) => {
      return {
        title: ads.title,
        adsDate: ads.time,
        description: ads.description,
        phone: ads.phone,
        typeId: ads.nedvigimost_type_id,
        data: ads.params,
        category: ads.cat2,
        categoryId: ads.cat2_id,
        region: ads.region
      };
    });
  }
}
