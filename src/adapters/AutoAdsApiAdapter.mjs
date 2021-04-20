import DefaultAdsApiAdapter from './DefaultAdsApiAdapter.mjs';

export default class AutoAdsApiAdapter extends DefaultAdsApiAdapter {
  /**
   *
   * @param data
   * @returns Object with convert data
   */
  convert(data) {
    const result = super.convert(data);
    result.data = {
      doorCount: data.params['Количество дверей'],
      usedType: data.params['Тип автомобиля'],
      carModel: data.params['Модель'],
      carBody: data.params['Тип кузова'],
      condition: data.params['Состояние'],
      carTransmission: data.params['Коробка передач'],
      yearOfProduction: data.params['Год выпуска'],
      carManufacturer: data.params['Марка'],
      wheelPosition: data.params['Руль'],
      driveAuto: data.params['Привод'],
      carEngineType: data.params['Тип двигателя'],
      carMileage: data.params['Пробег'],
      owners: data.params['Владельцев по ПТС'],
      engineLiters: data.params['Объём двигателя, л'],
      color: data.params['Цвет']
    };
    return result;
  }
}
