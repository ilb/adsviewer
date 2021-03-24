import { PrismaClient } from '@prisma/client';
import LastDateRepository from '../../src/repositories/LastDateRepository';

const prisma = new PrismaClient();
const repository = new LastDateRepository({ prisma });

it('TEST LastLoadRepository, setDate - create fields data and name, get date - return last sampling date by name', async () => {
  // testBaseData(); // раскоментируйте чтобы протестировать таблица наполнится датами
  const getDate = await repository.getDate('adsapi');
  const received = getDate.lastloaddate;
  const expected = new Date('2018-03-01 20:15:56');
  console.log({ getDate });

  expect(received).toStrictEqual(expected);
});

const testBaseData = async () => {
  let i = 1;
  while (i < 10) {
    await repository.setDate('adsapi', new Date(`2018-02-2${i} 20:15:56`));
    i++;
  }
};
