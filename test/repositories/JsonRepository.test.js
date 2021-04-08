import JsonRepository from '../../src/repositories/JsonRepository.mjs';
import prisma from '../../libs/prisma/prisma';

const testData = {
  color: 'Белый',
  owners: '1'
};

const expected = '';
it('should return ads by jsonData', async () => {
  const repository = new JsonRepository({ prisma });

  const res = await repository.getJsonData(testData);
  const received = res;

  console.log(res);
  expect(received).toStrictEqual(expected);
});
