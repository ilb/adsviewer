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
    const result = {
      idSource: data.id,
      idSource2: data.avitoid.toString(),
      url: data.url,
      phoneProtected: !!data.phone_protected,
      personTypeId: data.person_type_id,
      sourceId: data.source_id,
      countSamePhone: data.count_ads_same_phone,
      phoneOperator: data.phone_operator,
      phoneRegion: data.phone_region,
      address: data.address,
      city: data.city,
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
    if (data.coords) {
      result.lat = data.coords.lat;
      result.lng = data.coords.lng;
    }
    if (data.metro) {
      result.data.metro = data.metro;
    }
    if (data.km_do_metro) {
      result.data.metroDistance = data.km_do_metro.km_do_metro;
    }
    return result;
  }
}
