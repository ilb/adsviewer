export default class ModificationMapper {
  map(modificationsFromCatalog) {
    const bodies = [];
    const transmissions = [];
    // const engines = [];
    const modifications = modificationsFromCatalog.map((item) => {
      const { Modification, Model, Transmission, BodyType, YearFrom, EngineSize, Power } = item;

      this.paramMapper(bodies, BodyType);
      this.paramMapper(transmissions, Transmission);
      // this.paramMapper(engines, EngineSize);

      const res = {
        id: Number(Modification[0].id[0]),
        carmodelid: Number(Model[0].id[0]),
        cartransmissionid: Number(Transmission[0].id[0]),
        carbodyid: Number(BodyType[0].id[0]),
        caryear: Number(YearFrom[0]._),
        enginecapacity: Number(EngineSize[0]._),
        enginepower: Number(Power[0]._),
        name: Modification[0]._
      };

      res.code = `MANUAL__${res.enginepower}__${this.format(res.enginecapacity.toString())}`;
      return res;
    });
    // console.log({ transmissions, bodies });
    return { modifications, bodies, transmissions };
  }

  format(value) {
    const more = value.replaceAll(' ', '_');
    const less = value + '_0';
    return value.includes('.') ? more : less;
  }

  paramMapper(arr, value) {
    const formatValue = {
      id: Number(value[0].id[0]),
      name: value[0]._
    };
    if (!arr.map(({ id }) => id).includes(formatValue.id)) {
      arr.push(formatValue);
    }
  }
}
