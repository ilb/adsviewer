import CatalogProvider from './providers/CatalogProvider.mjs';

const provider = new CatalogProvider();

(async () => {
  await provider.getCatalogXML();
})();
