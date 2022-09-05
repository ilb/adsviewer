import CatalogAdapter from '../../src/adapters/CatalogAdapter.mjs';
import { createScope } from '../../libs/usecases/index.mjs';
import { promises as fs} from 'fs';
import catalogJs from '../data/catalog.js';

import { PrismaClient } from '@prisma/client';
const prisma = new PrismaClient();

const XML_FILE_WRITER = "C:/Users/Lenovo/OneDrive/Рабочий стол/JS2/adsviewer/test/data/catalog.xml";
let xmlDataMock;

beforeAll(async () => {
  xmlDataMock = await fs.readFile(XML_FILE_WRITER);
});

afterAll(async () => {
  await prisma.$disconnect();
});

test('get catalog', async () => {
  const scope = await createScope({}, false);
  const adapter = new CatalogAdapter(scope.cradle);
  const convertedData = await adapter.convert(xmlDataMock);
  expect(convertedData).toStrictEqual(catalogJs);
});
