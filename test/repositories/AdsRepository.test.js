import AdsRepository from '../../src/repositories/AdsRepository.mjs';
import { PrismaClient } from '@prisma/client';
import data from './data';
const prisma = new PrismaClient({ log: ['query', 'info'] });

const testData = {
  title: 'квартира'
};

const expected = [
  {
    title:
      '2-комнатная квартира: Рязань, Октябрьский административный округ, район Дашково-Песочня, улица Зубковой, 18к6 (65 м²)',
    description:
      'Продам 2-комн квартиру в новостройке,в отличном состоянии, 65/33/11 кв м, дому 10 лет кирпичн.',
    categoryId: 2
  },
  {
    categoryId: 2,
    description: 'описание квартиры',
    title: 'квартира'
  }
];
it('should save and return data by the passed parameters', async () => {
  const repository = new AdsRepository({ prisma });

  const saveData = await repository.save(data);
  const res = await repository.search(testData);
  const received = res.map((row) => {
    return {
      title: row.title,
      description: row.description,
      categoryId: row.categoryId
    };
  });

  // console.log({ res });
  expect(received).toStrictEqual(expected);
});
