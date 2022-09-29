export default class ManufacturerMapper {
  constructor({ cyrillicToTranslate }) {
    this.cyrillicToTranslate = cyrillicToTranslate;
  }
  /**
   *
   * @param {Array} data массив данных из каталога
   * @returns {Object}
   * manufacturers - массив отформатированных производителей авто для сохранения в бд
   * modelsFromCatalog - массив моделей из каталога для передачи в маппер моделей
   */
  map(data) {
    const modelsFromCatalog = [];
    const manufacturers = data.map((item) => {
      modelsFromCatalog.push(
        ...item.Model.map((model) => ({ carManufacturerId: Number(item.id[0]), ...model }))
      );
      const name = item.name[0];
      return {
        id: Number(item.id[0]),
        name,
        code: this.cyrillicToTranslate.transform(name, '_').toLowerCase(),
        avitocode: this.cyrillicToTranslate.transform(name, '_').toLowerCase()
      };
    });
    return { manufacturers, modelsFromCatalog };
  }
}
