import AdsAdapterFactory from '../../src/adapters/AdsAdapterFactory.mjs';
import AdsApiProvider from '../../src/providers/AdsApiProvider';

const urlSource =
  'https://ads-api.ru/main/api?user=dimars61@mail.ru&token=1e41187b3b81fea6358009d5ac351878&category_id=22&limit=2';
const adapterFactory = new AdsAdapterFactory();
const autoAdapter = adapterFactory.create('auto');
const provider = new AdsApiProvider(urlSource, autoAdapter);

// const dateFrom = '10-12-2021';
// const dateTo = '22-02-2021';
// const expected = new URL('https://ads-api.ru/main/api?user=dimars61@mail.ru&token=1e41187b3b81fea6358009d5ac351878');

it('should return format Data', async () => {
  const received = await provider.getAdsByDate();
  console.log({ received });
  expect(received).toStrictEqual(expected);
});
