import { PrismaClient } from '@prisma/client';
import LastDateRepository from '../../src/repositories/LastDateRepository';

const prisma = new PrismaClient();
const repository = new LastDateRepository({ prisma });

<<<<<<< HEAD
it('TEST LastLoadRepository, should create table with fields id, name, date, dateCreate', async () => {
  const createDate = await repository.setDate('adsapi', new Date('2018-02-25 20:15:56'));
  const getDate = await repository.getDate('adsapi');
  const received = getDate.lastloaddate;
  const expected = new Date('2018-02-25 20:15:56');
=======
it('TEST LastLoadRepository, setDate - create fields data and name, get date - return last sampling date by name', async () => {
  await repository.setDate('adsapi', new Date(`2018-03-07 20:15:56`));
  await repository.setDate('default', new Date(`2018-03-07 20:15:56`));

  const getDate = await repository.getDate('default');
  const received = getDate.lastloaddate;
  const expected = new Date('2018-03-07 20:15:56');
>>>>>>> development
  console.log({ getDate });

  expect(received).toStrictEqual(expected);
});
