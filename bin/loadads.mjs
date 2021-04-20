import AdsRepository from '../src/repositories/AdsRepository.mjs';
import AdsLoader from '../src/services/AdsLoader.mjs';
import AdsAdapterFactory from '../src/adapters/AdsAdapterFactory.mjs';
import AdsApiProvider from '../src/providers/AdsApiProvider.mjs';
import { UriAccessorFactory } from '@ilb/uriaccessorjs';
import LastDateRepository from '../src/repositories/LastDateRepository.mjs';
import RegionRepository from '../src/repositories/RegionRepository.mjs';
import RegionService from '../src/services/RegionService.mjs';

import pkg from '@prisma/client';
const { PrismaClient } = pkg;
// const prisma = new PrismaClient({ log: ['query', 'info'] });
const prisma = new PrismaClient();

const lastDateRepository = new LastDateRepository({ prisma });

const regionRepository = new RegionRepository({ prisma });
const regionService = new RegionService({ regionRepository });
const adsAdapterFactory = new AdsAdapterFactory();
const uriAccessorFactory = new UriAccessorFactory({
  uriAccessorFileEnabled: true
});
const adsRepository = new AdsRepository({ prisma, regionService });
const adsAdapter = adsAdapterFactory.create('auto');
// eslint-disable-next-line prettier/prettier
const sourceAdsUrl = process.env.ADSAPI_URL;
// пример строки
// https://ads-api.ru/main/api?user=dima2prog@gmail.com&token=7898911c474142c34cae4d840cb149e9&category_id=22

const adsProvider = new AdsApiProvider(sourceAdsUrl, adsAdapter, uriAccessorFactory);
const adsLoader = new AdsLoader({
  adsProvider,
  lastDateRepository,
  adsRepository,
  nameSource: 'adsapi',
  prisma
});

async function uploaded() {
  try {
    await adsLoader.loadData();
  } catch (error) {
    console.log(error);
  }
}

uploaded();
