// eslint-disable-next-line no-undef
const container = new Map();
import AutoAdsApiAdapter from './adapters/AutoAdsApiAdapter.mjs';
import DefaultAdsApiAdapter from './adapters/DefaultAdsApiAdapter.mjs';
import AdsAdapterfactory from './adapters/AdsAdapterFactory.mjs';
import DataSource from './database/DataSource.mjs';
import RegionService from './services/RegionService.mjs';
import CategoryService from './services/CategoryService.mjs';
import AdsApiProvider from './providers/AdsApiProvider.mjs';
import LastDateRepository from './repositories/LastDateRepository.mjs';
import AdsRepository from './repositories/AdsRepository.mjs';
import CategoryRepository from './repositories/CategoryRepository.mjs';
import RegionRepository from './repositories/RegionRepository.mjs';
import DictionaryRepository from './repositories/DictionaryRepository.mjs';
import CatalogProvider from './providers/CatalogProvider.mjs';
import CatalogAdapter from './adapters/CatalogAdapter.mjs';

container.set('autoAdsApiAdapter', AutoAdsApiAdapter);
container.set('defaultAdsApiAdapter', DefaultAdsApiAdapter);
container.set('dataSource', DataSource);
container.set('adsAdapterFactory', AdsAdapterfactory);
container.set('regionService', RegionService);
container.set('categoryService', CategoryService);
container.set('adsProvider', AdsApiProvider);
container.set('lastDateRepository', LastDateRepository);
container.set('adsRepository', AdsRepository);
container.set('categoryRepository', CategoryRepository);
container.set('regionRepository', RegionRepository);
container.set('dictionaryRepository', DictionaryRepository);
container.set('catalogProvider', CatalogProvider);
container.set('catalogAdapter', CatalogAdapter);

export default container;
