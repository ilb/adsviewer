import transliterate from 'transliterate';

export default class RegionService {
  constructor({ regionRepository }) {
    this.regionRepository = regionRepository;
    this.regionsMap = null;
  }

  async fillRegionsMap() {
    if (this.regionsMap == null) {
      const regions = await this.regionRepository.regionNameList();
      // eslint-disable-next-line no-undef
      this.regionsMap = new Map();
      regions.forEach((item) => {
        this.regionsMap.set(item.name, item.id);
      });
    }
  }
  async getRegionIdByName(name) {
    let id = null;
    if (name) {
      await this.fillRegionsMap();
      id = this.regionsMap.get(name);
      // console.log({ id, name });
      if (!id) {
        const code = transliterate(name).replace(/\s/g, '_');
        const data = { code, name, active: true };
        console.log('create new region', data);
        const region = this.regionRepository.save(data);
        id = region.id;
        this.regionsMap.set(name, id);
      }
    }
    return id;
  }
}
