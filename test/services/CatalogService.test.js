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
    code: expect.any(String),
    enginecapacity: expect.anything(),
    enginepower: expect.any(Number),
    avitocode: null,
    carmanufacturerid: expect.any(Number)
  };

  const sdfsdf = {
    id: expect.any(Number),
    cartransmissionid: expect.any(Number),
    carbodyid: expect.any(Number),
    carmodelid: expect.any(Number),
    caryear: expect.any(Number),
    enginecapacity: expect.anything(),
    enginepower: expect.any(Number),
    name: expect.any(String),
    generation: expect.any(String)
  };

  await repository.deleteAll();
  let allModels = await repository.getAll({ tableName: 'carmodel' });
  let allModifications = await repository.getAll({ tableName: 'carmodification' });
  expect(allModels.length).toBe(0);
  expect(allModifications.length).toBe(0);

  await service.loadData();
  allModels = await repository.getAll({ tableName: 'carmodel' });
  allModifications = await repository.getAll({ tableName: 'carmodification' });
  expect(allModels.length).toBe(19);
  expect(allModifications.length).toBe(137);

  await service.loadData();
  allModels = await repository.getAll({ tableName: 'carmodel' });
  allModifications = await repository.getAll({ tableName: 'carmodification' });
  expect(allModels.length).toBe(19);
  expect(allModifications.length).toBe(137);

  await service.loadData();

  expect(allModels[0]).toMatchObject(expectedRow);
  expect(allModifications[0]).toMatchObject(sdfsdf);
});
