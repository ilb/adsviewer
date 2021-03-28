import AdsRepository from '../../src/repositories/AdsRepository';
import AdsLoader from '../../src/services/AdsLoader.mjs';
import AdsAdapterFactory from '../../src/adapters/AdsAdapterFactory.mjs';
import AdsApiProvider from '../../src/providers/AdsApiProvider';
import { UriAccessorFactory } from '../../libs/uriAccessor';
import LastDateRepository from '../../src/repositories/LastDateRepository';
import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient({ log: ['query', 'info'] });
const lastDateRepository = new LastDateRepository({ prisma });
const adsAdapterFactory = new AdsAdapterFactory();
const uriAccessorFactory = new UriAccessorFactory({
  uriAccessorFileEnabled: true
});
const adsRepository = new AdsRepository({ prisma });
const adsAdapter = adsAdapterFactory.create('auto');
const sourceAdsUrl =
  'https://ads-api.ru/main/api?user=dimars61@mail.ru&token=1e41187b3b81fea6358009d5ac351878&category_id=22&limit=1';
// https://ads-api.ru/main/api?user=dimars61@mail.ru&token=1e41187b3b81fea6358009d5ac351878&category_id=22&limit=1
const expected = '';
it('should return data', async () => {
  const adsProvider = new AdsApiProvider(sourceAdsUrl, adsAdapter, uriAccessorFactory);
  const adsLoader = new AdsLoader(adsProvider, lastDateRepository, adsRepository, 'adsapi', prisma);
  // const received = await adsLoader.testLoadData();
  // const received = await adsLoader.loadData();
  console.log(received);
  expect(received).toStrictEqual(expected);
});
