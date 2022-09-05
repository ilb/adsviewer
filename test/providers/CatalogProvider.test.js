import CatalogProvider from '../../src/providers/CatalogProvider.mjs';
import { createScope } from '../../libs/usecases/index.mjs';
import catalogJs from '../data/catalog.js';

import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

afterAll(async () => {
  await prisma.$disconnect();
});

test('get catalog', async () => {
  const scope = await createScope({}, false);
  const provider = new CatalogProvider(scope.cradle);
  provider.url = "file:C:/Users/Lenovo/OneDrive/Рабочий стол/JS2/adsviewer/test/data/catalog.xml"

  const catalogData = await provider.getData();
  expect(catalogData).toStrictEqual(catalogJs);
});
