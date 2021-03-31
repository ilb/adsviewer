export default class AdsLoader {
  constructor(adsProvider, lastDateRepository, adsRepository, nameSource, prisma) {
    this.adsProvider = adsProvider;
    this.lastDateRepository = lastDateRepository;
    this.nameSource = nameSource;
    this.adsRepository = adsRepository;
    this.prisma = prisma;
  }

  async getLastDate() {
    const date = this.lastDateRepository.getDate(this.nameSource);
    return date.lastloaddate;
  }

  async setLastDate(data) {
    const dataLastElem = data.pop();
    const lastDate = dataLastElem.time;
    return this.lastDateRepository.setDate(this.nameSource, lastDate);
  }

  async loadData(dateFrom, dateTo) {
    let setFromDate = dateFrom;
    const lastDate = (await this.getLastDate()) || new Date();
    if (!dateFrom) {
      setFromDate = lastDate;
    }
    const data = await this.adsProvider.getAdsByDate(setFromDate, dateTo);
    this.setLastDate(data);
    await this.adsRepository.save(data);
  }

  async testLoadData() {
    const data = await this.adsProvider.getAdsByDate();
    return await this.adsRepository.save(data);
  }
}
