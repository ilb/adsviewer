export default class DefaultAdsApiAdapter {
  /**
   *
   * @param ads
   * @returns Object with convert data
   */
  convert(ads) {
    if (!ads) {
      throw new Error('Adapter: no data from provider');
    }
    const links = ads.images.map((item) => ({
      href: item.imgurl,
      rel: 'image'
    }));
    return {
      idSource: ads.id,
      title: ads.title,
      adsDate: ads.time,
      price: ads.price,
      person: ads.person,
      description: ads.description,
      phone: ads.phone,
      typeId: Number(ads.nedvigimost_type_id),
      data: ads.params,
      links,
      category: ads.cat2,
      categoryId: ads.cat2_id,
      region: ads.region
    };
  }
}
