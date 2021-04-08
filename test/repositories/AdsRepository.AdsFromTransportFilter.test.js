import AdsRepository from '../../src/repositories/AdsRepository.mjs';
import prisma from '../../libs/prisma/prisma';
import data from './data';

const query = {
  category: 'Автомобили',
  owners: '2',
  yearOfProduction: ''
};
const expected = ['asdf'];
it('should save data in database and return data by the passed parameters', async () => {
  const repository = new AdsRepository({ prisma });

  const res = await repository.adsFromTransportFilter(query);
  console.log(res);
  expect(res).toStrictEqual(expected);
});
