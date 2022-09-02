import CatalogProvider from '../src/providers/CatalogProvider.mjs';
import { createScope } from '../libs/usecases/index.mjs';

import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

afterAll(async () => {
  await prisma.$disconnect();
});

test('get catalog', async () => {
  const scope = await createScope({}, false);

  const expected = null;
  const provider = new CatalogProvider(scope.cradle);

  const registry = await provider.getData();
  console.log({ registry });
  expect(registry).toStrictEqual(expected);
});
