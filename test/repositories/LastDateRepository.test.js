import prisma from '../../libs/prisma/prisma';
import LastDateRepository from '../../src/repositories/LastDateRepository';

const repository = new LastDateRepository({ prisma });

it('TEST LastLoadRepository, setDate - create fields data and name, get date - return last sampling date by name', async () => {
  await repository.setDate('adsapi', new Date(`2018-03-07 20:15:56`));
  await repository.setDate('default', new Date(`2018-03-07 20:15:56`));

  const getDate = await repository.getDate('default');
  const received = getDate.lastloaddate;
  const expected = new Date('2018-03-07 20:15:56');
  console.log({ getDate });

  expect(received).toStrictEqual(expected);
});
