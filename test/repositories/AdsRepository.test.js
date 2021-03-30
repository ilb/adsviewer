import AdsRepository from '../../src/repositories/AdsRepository.mjs';
import prisma from '../../libs/prisma/prisma';
import data from './data';

const testData = {
  title: 'acura'
};

const expected = [];
it('should save data in database and return data by the passed parameters', async () => {
  const repository = new AdsRepository({ prisma });

  await repository.save(data);
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
