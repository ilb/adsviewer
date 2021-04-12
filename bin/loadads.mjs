import AdsRepository from '../src/repositories/AdsRepository.mjs';
import AdsLoader from '../src/services/AdsLoader.mjs';
import AdsAdapterFactory from '../src/adapters/AdsAdapterFactory.mjs';
import AdsApiProvider from '../src/providers/AdsApiProvider.mjs';
import { UriAccessorFactory } from '@ilb/uriaccessorjs';
import LastDateRepository from '../src/repositories/LastDateRepository.mjs';
import pkg from '@prisma/client';
const { PrismaClient } = pkg;
// const prisma = new PrismaClient({ log: ['query', 'info'] });
const prisma = new PrismaClient();

const lastDateRepository = new LastDateRepository({ prisma });
const adsAdapterFactory = new AdsAdapterFactory();
const uriAccessorFactory = new UriAccessorFactory({
  uriAccessorFileEnabled: true
});
const adsRepository = new AdsRepository({ prisma });
const adsAdapter = adsAdapterFactory.create('auto');
// eslint-disable-next-line prettier/prettier
const sourceAdsUrl = process.env.ADSAPI_URL;
// пример строки
// https://ads-api.ru/main/api?user=dima2prog@gmail.com&token=7898911c474142c34cae4d840cb149e9&category_id=22

const adsProvider = new AdsApiProvider(sourceAdsUrl, adsAdapter, uriAccessorFactory);
const adsLoader = new AdsLoader(adsProvider, lastDateRepository, adsRepository, 'adsapi', prisma);
const dateFrom = new Date('2021-04-07 20:25:49');
const dateTo = new Date('2021-04-07 20:35:23');

const uploaded = async () => {
  await adsLoader.loadData();
};

uploaded();
