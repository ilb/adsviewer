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
      owners: data.params['Владельцев по ПТС'],
      engineLiters: data.params['Объём двигателя, л'],
      color: data.params['Цвет']
    };
    // remove mileage from model
    if (result.data.carModel) {
      const mileagePos = result.data.carModel.indexOf(' ');
      if (mileagePos > 0) {
        result.data.carModel = result.data.carModel.substring(0, mileagePos).trim();
      }
    }
    if (data.params['Пробег']) {
      result.data.carMileage = Number(data.params['Пробег'].replace(/\s/g, ''));
    }
    return result;
  }
}
