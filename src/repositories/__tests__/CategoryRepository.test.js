import CategoryRepository from '../CategoryRepository';
import * as dotenv from 'dotenv';
import * as path from 'path';
import DataSourceFactory from '../../database/DataSourceFactory';
import DictionaryRepository from '../DictionaryRepository';

dotenv.config({ path: path.resolve(process.cwd(), '.env.local') });
const dataSource = DataSourceFactory();

// console.log(config);
const dictionaryRepository = new DictionaryRepository({ dataSource });

const repository = new CategoryRepository({ dictionaryRepository });

afterAll(async () => {
  return dictionaryRepository.connect.quit();
});

it('should return categories', async () => {
  const expected = [
    'Недвижимость',
    'Работа',
    'Услуги',
    'Транспорт',
    'Для дома и дачи',
    'Бытовая электроника',
    'Хобби и отдых',
    'Животные',
    'Для бизнеса'
  ];
  const res = await repository.getCategoryNames();
  // console.log({ res });
  expect(res).toStrictEqual(expected);
});
