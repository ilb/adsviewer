import AdsRepository from '../../src/repositories/AdsRepository';
import AdsLoader from '../../src/services/AdsLoader.mjs';
import AdsAdapterFactory from '../../src/adapters/AdsAdapterFactory.mjs';
import AdsApiProvider from '../../src/providers/AdsApiProvider';
import { UriAccessorFactory } from '../../libs/uriAccessor';
import LastDateRepository from '../../src/repositories/LastDateRepository';
import prisma from '../../libs/prisma/prisma';

const lastDateRepository = new LastDateRepository({ prisma });
const adsAdapterFactory = new AdsAdapterFactory();
const uriAccessorFactory = new UriAccessorFactory({
  uriAccessorFileEnabled: true
});
const adsRepository = new AdsRepository({ prisma });
const adsAdapter = adsAdapterFactory.create('auto');
const sourceAdsUrl = 'file://test/services/ads.json';

const data = [
  {
    idSource: 537556120,
    adsDate: '2021-03-29 12:03:00',
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
    idSource: 537556112,
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

it('should save and return the date of the last added ad', async () => {
  const adsProvider = new AdsApiProvider(sourceAdsUrl, adsAdapter, uriAccessorFactory);
  const adsLoader = new AdsLoader(adsProvider, lastDateRepository, adsRepository, 'adsapi', prisma);

  await adsLoader.setLastDate(data);
  const lastDateAdsLoader = await adsLoader.getLastDate();
  const expected = new Date('2021-03-29 12:03:00').toISOString();
  const received = new Date(lastDateAdsLoader.lastloaddate).toISOString();
  console.log(received);
  expect(received).toStrictEqual(expected);
});
