export default class ModelMapper {
  map(modelsFromCatalog) {
    const modificationsFromCatalog = [];
    const models = modelsFromCatalog.map((item) => {
      modificationsFromCatalog.push(...item.Generation.flatMap(({ Modification }) => Modification));
      const name = item.name[0];
      return {
        id: Number(item.id[0]),
        name,
        code: name.replaceAll(' ', '_').toLowerCase(),
        avitocode: name.replaceAll(' ', '_').toLowerCase(),
        carmanufacturerid: item.carManufacturerId
      };
    });
    return { models, modificationsFromCatalog };
  }
}
