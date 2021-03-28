import AdsAdapterFactory from '../../src/adapters/AdsAdapterFactory.mjs';
import AdsApiProvider from '../../src/providers/AdsApiProvider';
import { UriAccessorFactory } from '../../libs/uriAccessor';

const sourceAdsUrl = 'file://test/providers/ads.json';
const adapterFactory = new AdsAdapterFactory();
const adapter = adapterFactory.create();

const uriAccessorFactory = new UriAccessorFactory({
  uriAccessorFileEnabled: true
});
const expected = [
  {
    title:
      '2-комнатная квартира: Рязань, Октябрьский административный округ, район Дашково-Песочня, улица Зубковой, 18к6 (65 м²)',
    adsDate: '2018-02-25 20:15:56',
    description:
      'Продам 2-комн квартиру в новостройке,в отличном состоянии, 65/33/11 кв м, дому 10 лет кирпичн., не угл., комнаты изолир.18 и 15 кв м, окна ПВХ во двор, лоджия застеклена и отделана, встроенная кухня, с/у раздельный в плитке, с/техника новая, просторный удобный холл 10 кв м, натяжные потолки, кладовка в этом доме, огромный техэтаж,  рядом остановка, магазины, рынок в 5 мин, поликлиника в 5 мин, спорт. комплекс в 3 мин. СРОЧНО !!',
    phone: '891063XXXXX',
    type: 'Продам',
    data: {
      'Вид объекта': 'Вторичка',
      'Жилая площадь': 33,
      'Количество комнат': 2,
      'Площадь кухни': 11,
      'Тип объявления': 'Продам',
      'Этажей в доме': 10
    },
    category: 'Недвижимость',
    region: 'Рязанская область'
  },
  {
    title: '2-к кв. Краснодарский край, Краснодар Валерия Гассия 18 (68 м²)',
    adsDate: '2018-02-25 20:15:54',
    description:
      'Отличная 2-х комнатная квартира на 2 стороны. В квартире сделан ремонт, по договоренности остается мебель. Шикарный вид из окна на р. Кубань и горы. Ипотека. мат. капитал.',
    phone: '886120XXXXX',
    type: 'Продам',
    data: {
      'Вид объекта': 'Вторичка',
      'Жилая площадь': 35,
      'Количество комнат': 2,
      'Площадь кухни': 15,
      'Тип объявления': 'Продам',
      'Этажей в доме': 12
    },
    category: 'Недвижимость',
    region: 'Краснодарский край'
  }
];
it('should return format Data', async () => {
  const provider = new AdsApiProvider(sourceAdsUrl, adapter, uriAccessorFactory);
  const received = await provider.getAdsByDate();

  console.log({ received });
  expect(received).toStrictEqual(expected);
});
