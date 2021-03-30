import AdsAdapterFactory from '../../src/adapters/AdsAdapterFactory';
import data from './data';
const adapterFactory = new AdsAdapterFactory();

const expected = [
  {
    adsDate: '2021-03-28 21:33:13',
    category: 'Автомобили',
    categoryId: 22,
    data: {
      carBody: '',
      carEngineType: 'Бензин',
      carManufacturer: 'Acura',
      carMileage: '280 000',
      carModel: 'TL',
      carTransmission: 'Автомат',
      color: 'Серебряный',
      condition: 'Не битый',
      doorCount: '4',
      driveAuto: 'Передний',
      engineLiters: '3.2',
      owners: '4+',
      usedType: 'С пробегом',
      wheelPosition: 'Левый',
      yearOfProduction: '2005'
    },
    description:
      'Продам автомобиль бизнес класса который сочетает в себе комфорт, мощь и надежность, заинтересовавшимся расскажу все  по телефону, машина обслужина для своих лет в отличном состоянии , без ржавчины',
    phone: '896749XXXXX',
    region: 'Санкт-Петербург',
    title: 'Acura TL 3.2 AT, 2005, 280 000 км',
    typeId: 1
  },
  {
    adsDate: '2021-03-28 21:33:13',
    category: 'Автомобили',
    categoryId: 22,
    data: {
      carBody: '',
      carEngineType: 'Бензин',
      carManufacturer: 'Acura',
      carMileage: '280 000',
      carModel: 'TL',
      carTransmission: 'Автомат',
      color: 'Серебряный',
      condition: 'Не битый',
      doorCount: '4',
      driveAuto: 'Передний',
      engineLiters: '3.2',
      owners: '4+',
      usedType: 'С пробегом',
      wheelPosition: 'Левый',
      yearOfProduction: '2005'
    },
    description:
      'Продам автомобиль бизнес класса который сочетает в себе комфорт, мощь и надежность, заинтересовавшимся расскажу все  по телефону, машина обслужина для своих лет в отличном состоянии , без ржавчины',
    phone: '896749XXXXX',
    region: 'Санкт-Петербург',
    title: 'Acura TL 3.2 AT, 2005, 280 000 км',
    typeId: 1
  }
];
it('should converted data', async () => {
  const autoAdapter = await adapterFactory.create('auto');
  const received = await autoAdapter.convert(data);
  console.log(received);
  expect(received).toStrictEqual(expected);
});
