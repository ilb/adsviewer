import CatalogService from '../../src/services/CatalogService.mjs';
import { createScope } from '../../libs/usecases/index.mjs';

import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

afterAll(async () => {
  await prisma.$disconnect();
});

test('Let load catalog data', async () => {
  const catalogJs = null;
  const scope = await createScope({}, false);
  const service = new CatalogService(scope.cradle);
  const catalogData = await service.loadData();
  console.log({ catalogData });
  expect(catalogData).toStrictEqual(catalogJs);
});
