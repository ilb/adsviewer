import CatalogRepository from '../../src/repositories/CatalogRepository.mjs';
import CatalogService from '../../src/services/CatalogService.mjs';
import { createScope } from '../../libs/usecases/index.mjs';

import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

afterAll(async () => {
  await prisma.$disconnect();
});

test('Let load catalog data', async () => {
  const scope = await createScope({}, false);
  const service = new CatalogService(scope.cradle);
  const repository = new CatalogRepository(scope.cradle);

  const expectedRow = {
    id: expect.any(Number),
    name: expect.any(String),
    code: null,
    enginecapacity: expect.anything(),
    enginepower: expect.any(Number),
    avitocode: null,
    carmanufacturerid: expect.any(Number),
    carbodyid: expect.any(Number),
    cartransmissionid: expect.any(Number),
    carmodelgeneration: expect.any(String),
    carmodelmodification: expect.any(String)
  }

  await service.loadData();
  let allRows = await repository.getAll();
  expect(allRows.length).toBe(149);

  await service.loadData();
  allRows = await repository.getAll();
  expect(allRows.length).toBe(149);

  expect(allRows[0]).toMatchObject(expectedRow);
});
