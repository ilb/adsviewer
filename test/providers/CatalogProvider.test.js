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

  const catalogData = await provider.getData();
  console.log(catalogData.Catalog.Make[0].Model[0].Generation[0].Modification);
  expect(catalogData).toStrictEqual(catalogJs);
});
