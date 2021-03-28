export default class AdsLoader {
  constructor({ adsProvider, adsAdapter, lastDateRepository, adsRepository, nameSource }) {
    this.adsAdapter = adsAdapter;
    this.adsProvider = adsProvider;
    this.lastDateRepository = lastDateRepository;
    this.nameSource = nameSource;
    this.adsRepository = adsRepository;
  }

  async getLastDate() {
    const nameSource = this.nameSource;
    const date = this.lastDateRepository.getDate(nameSource);
    return date.lastloaddate;
  }

  async setLastDate(data) {
    const dataLastElem = data.pop();
    const lastDate = dataLastElem
    const nameSource = this.nameSource;
    return this.lastDateRepository.setDate(nameSource, lastDate);
  }

  async loadData({ dateFrom, dateTo }) {
    let setFromDate = dateFrom;
    const lastDate = (await this.getLastDate()) || new Date();
    if (!dateFrom) {
      setFromDate = lastDate;
    }
    const data = await this.adsProvider.getAdsByDate(setFromDate, dateTo);

    this.setLastDate(data);
    this.adsRepository.save(data);
  }
}
