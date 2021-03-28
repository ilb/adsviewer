import AdsAdapterFactory from '../../src/adapters/AdsAdapterFactory';
import data from './data';
const adapterFactory = new AdsAdapterFactory();

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
      'Тип объявления': 'Продам',
      'Количество комнат': 2,
      'Вид объекта': 'Вторичка',
      // eslint-disable-next-line prettier/prettier
      'Площадь': 65,
      // eslint-disable-next-line prettier/prettier
      'Этаж': 6,
      'Этажей в доме': 10,
      'Площадь кухни': 11,
      'Жилая площадь': 33
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
      'Тип объявления': 'Продам',
      'Количество комнат': 2,
      'Вид объекта': 'Вторичка',
      // eslint-disable-next-line prettier/prettier
      "Площадь": 68,
      // eslint-disable-next-line prettier/prettier
      "Этаж": 12,
      'Этажей в доме': 12,
      'Площадь кухни': 15,
      'Жилая площадь': 35
    },
    category: 'Недвижимость',
    region: 'Краснодарский край'
  }
];
it('should converted data', async () => {
  const autoAdapter = await adapterFactory.create();
  const received = await autoAdapter.convert(data);
  console.log({ received });
  expect(received).toStrictEqual(expected);
});
