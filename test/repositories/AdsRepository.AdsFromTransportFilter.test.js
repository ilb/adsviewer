import AdsRepository from '../../src/repositories/AdsRepository.mjs';
import prisma from '../../libs/prisma/prisma';
import data from './data';

const query = {
  case: 'Автомобили',
  region: 'samarskaya_oblast',
  carmanufacturer: 'ВАЗ',
  carmodel: '2110'
};
const expected = ['asdf'];
it('should save data in database and return data by the passed parameters', async () => {
  const repository = new AdsRepository({ prisma });

  const res = await repository.adsFromTransportFilter(query);
  console.log(res);
  expect(res).toStrictEqual(expected);
});
