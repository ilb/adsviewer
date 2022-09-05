export default class CatalogProvider {
  constructor({ uriAccessorFactory, catalogAdapter }) {
    this.uriAccessorFactory = uriAccessorFactory;
    this.catalogsAdapter = catalogAdapter;
    this.url = process.env.CATALOG_URL;
    this.content = null;
  }

  async getData() {
    const uriAccessor = this.uriAccessorFactory.getUriAccessor(this.url);
    const data = await uriAccessor.getContent();
    return await this.catalogsAdapter.convert(data);
  }
}
