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

function AddMinutesToDate(date, minutes) {
  return new Date(date.getTime() - minutes * 60000);
}

function DateFormat(date) {
  let days = date.getDate();
  let year = date.getFullYear();
  let month = date.getMonth() + 1;
  let hours = date.getHours();
  let minutes = date.getMinutes();
  days = days < 10 ? '0' + days : days;
  month = month < 10 ? '0' + month : month;
  hours = hours < 10 ? '0' + hours : hours;
  minutes = minutes < 10 ? '0' + minutes : minutes;
  let strTime = days + '-' + month + '-' + year + ' ' + hours + ':' + minutes + ':' + '00';
  return strTime;
}

const adsProvider = new AdsApiProvider(sourceAdsUrl, adsAdapter, uriAccessorFactory);
const adsLoader = new AdsLoader(adsProvider, lastDateRepository, adsRepository, 'adsapi', prisma);
const date1 = new Date();
const delay = 60000; /* 1 минута */
const dateFrom = DateFormat(AddMinutesToDate(date1, 46));
const dateTo = DateFormat(AddMinutesToDate(date1, 31));
const uploaded = async () => {
  await adsLoader.loadData(dateFrom, dateTo);
};

let upload = setTimeout(function tick() {
  console.log('Loaded...');
  uploaded().catch((e) => {
    e.meta;
  });
  // eslint-disable-next-line no-unused-vars
  upload = setTimeout(tick, delay);
}, delay);
