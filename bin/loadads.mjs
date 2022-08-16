import AdsRepository from '../src/repositories/AdsRepository.mjs';
import AdsLoader from '../src/services/AdsLoader.mjs';
import AdsAdapterFactory from '../src/adapters/AdsAdapterFactory.mjs';
import AdsApiProvider from '../src/providers/AdsApiProvider.mjs';
import { UriAccessorFactory } from '@ilb/uriaccessorjs';
import LastDateRepository from '../src/repositories/LastDateRepository.mjs';
import RegionRepository from '../src/repositories/RegionRepository.mjs';
import RegionService from '../src/services/RegionService.mjs';
import CategoryRepository from '../src/repositories/CategoryRepository.mjs';
import CategoryService from '../src/services/CategoryService.mjs';

import pkg from '@prisma/client';
const { PrismaClient } = pkg;
// const prisma = new PrismaClient({ log: ['query', 'info'] });
const prisma = new PrismaClient();

const lastDateRepository = new LastDateRepository({ prisma });

const regionRepository = new RegionRepository({ prisma });
const regionService = new RegionService({ regionRepository });

const categoryRepository = new CategoryRepository({ prisma });
const categoryService = new CategoryService({ categoryRepository });

const adsAdapterFactory = new AdsAdapterFactory();
const uriAccessorFactory = new UriAccessorFactory({
  uriAccessorFileEnabled: true
});
const adsRepository = new AdsRepository({ prisma, regionService, categoryService });
const sourceAdsUrl = process.env.ADSAPI_URL;

const adsProvider = new AdsApiProvider(sourceAdsUrl, adsAdapterFactory, uriAccessorFactory);
const adsLoader = new AdsLoader({
  adsProvider,
  lastDateRepository,
  adsRepository,
  nameSource: 'adsapi',
  prisma
});

async function uploaded() {
  try {
    await adsLoader.loadData(new Date('2021-05-01'), new Date('2021-08-01'));
    console.log('all done');
  } catch (error) {
    console.log(error);
  } finally {
    await prisma.$disconnect();
  }
}

uploaded().then();
