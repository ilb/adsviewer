export default class DefaultAdsApiAdapter {
  /**
   *
   * @param data
   * @returns Object with convert data
   */
  convert(data) {
    if (!data) {
      throw new Error('data required');
    }
    const links = data.images.map((item) => ({
      href: item.imgurl,
      rel: 'image'
    }));
    return {
      idSource: data.id,
      title: data.title,
      adsDate: data.time,
      price: data.price,
      person: data.person,
      description: data.description,
      phone: data.phone.substring(0, 20),
      typeId: Number(data.nedvigimost_type_id),
      data: data.params,
      links,
      category: data.cat2,
      categoryId: data.cat2_id,
      region: data.region
    };
  }
}
