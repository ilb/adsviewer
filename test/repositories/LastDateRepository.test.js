import { PrismaClient } from '@prisma/client';
import LastDateRepository from '../../src/repositories/LastDateRepository';

const prisma = new PrismaClient();
const repository = new LastDateRepository({ prisma });

it('TEST LastLoadRepository, should create table with fields id, name, date, dateCreate', async () => {
  const createDate = await repository.setDate('adsapi', new Date('2018-02-25 20:15:56'));
  const getDate = await repository.getDate('adsapi');
  const received = getDate.lastloaddate;
  const expected = new Date('2018-02-25 20:15:56');
  console.log({ getDate });

  expect(received).toStrictEqual(expected);
});
