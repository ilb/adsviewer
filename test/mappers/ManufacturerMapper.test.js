import ManufacturerMapper from '../../src/mappers/ManufacturerMapper.mjs';
import { createScope } from '../../libs/usecases/index.mjs';
import catalog from '../data/catalog';

import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

afterAll(async () => {
  await prisma.$disconnect();
});

test('check output data', async () => {
  const scope = await createScope({}, false);

  const mapper = new ManufacturerMapper(scope.cradle);

  mapper.map();

  const res = {};
  expect(null).toBe(res);
});
