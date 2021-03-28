export default class AutoAdsApiAdapter {
  async convert(data) {
    if (!data) {
      throw new Error('Adapter: no data from provider');
    }
    return data.map((ads) => {
      return {
        title: ads.title,
        adsDate: ads.time,
        description: ads.description,
        phone: ads.phone || '89xxxxxxxx',
        type: ads.nedvigimost_type,
        data: {
          doorCount: ads.params['Количество дверей'],
          usedType: ads.params['Тип автомобиля'],
          carModel: ads.params['Модель'],
          carBody: ads.params['Тип кузова'],
          condition: ads.params['Состояние'],
          carTransmission: ads.params['Коробка передач'],
          yearOfProduction: ads.params['Год выпуска'],
          carManufacturer: ads.params['Марка'],
          wheelPosition: ads.params['Руль'],
          driveAuto: ads.params['Привод'],
          carEngineType: ads.params['Тип двигателя'],
          carMileage: ads.params['Пробег'],
          owners: ads.params['Владельцев по ПТС'],
          engineLiters: ads.params['Объём двигателя, л'],
          color: ads.params['Цвет']
        },
        category: ads.cat1,
        categoryId: ads.cat2_id,
        region: ads.region
      };
    });
  }
}
