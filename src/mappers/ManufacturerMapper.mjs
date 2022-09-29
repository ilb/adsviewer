export default class ManufacturerMapper {
  constructor({ cyrillicToTranslit }) {
    this.cyrillicToTranslit = cyrillicToTranslit;
  }

  map(data) {
    const modelsFromCatalog = [];
    data.map((item) => console.log(item.Model));
    const manufacturers = data.map((item) => {
      modelsFromCatalog.push(
        ...item.Model.map((model) => ({ carManufacturerId: Number(item.id[0]), ...model }))
      );
      const name = item.name[0];
      return {
        id: Number(item.id[0]),
        name,
        code: this.cyrillicToTranslit.transform(name, '_'),
        // code: name.replaceAll(' ', '_').toLowerCase(),
        avitocode: name.replaceAll(' ', '_').toLowerCase()
      };
    });
    return { manufacturers, modelsFromCatalog };
  }
}
