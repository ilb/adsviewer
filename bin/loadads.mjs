import AdsLoader from '../src/services/AdsLoader.mjs';
import prisma from '../libs/prisma/prisma.mjs';
import { createScope } from '../libs/usecases/index.mjs';

async function load() {
  const scope = await createScope({}, false);
  const adsLoader = new AdsLoader(scope.cradle);
  await adsLoader.loadData(new Date('2021-05-01'), new Date('2021-08-01'));
  console.log('all done');
}

async function uploaded() {
  try {
    await load();
  } catch (error) {
    console.log(error);
  } finally {
    await prisma.$disconnect();
  }
}

uploaded().then();
