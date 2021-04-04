export default class AdsLoader {
  constructor(adsProvider, lastDateRepository, adsRepository, nameSource, prisma) {
    this.adsProvider = adsProvider;
    this.lastDateRepository = lastDateRepository;
    this.nameSource = nameSource;
    this.adsRepository = adsRepository;
    this.prisma = prisma;
  }
  /**
   *
   * @returns Object
   */
  async getLastDate() {
    const date = await this.lastDateRepository.getDate(this.nameSource);
    return date;
  }
  /**
   *
   * @param data Array
   */
  async setLastDate(data) {
    const sortData = data.sort(function (a, b) {
      const dateA = new Date(a.adsDate);
      const dateB = new Date(b.adsDate);
      return dateA - dateB;
    });

    const dataLastElem = sortData.pop();
    const lastDate = new Date(dataLastElem.adsDate).toISOString();
    await this.lastDateRepository.setDate(this.nameSource, lastDate);
  }
  /**
   *
   * @param dateFrom
   * @param dateTo
   * upload data to database
   */
  async loadData(dateFrom, dateTo) {
    let setFromDate = dateFrom;
    const lastDate = await this.getLastDate();

    if (!dateFrom && lastDate) {
      setFromDate = new Date(lastDate.lastloaddate).toISOString() || '';
    }
    const data = await this.adsProvider.getAdsByDate(setFromDate, dateTo);
    await this.setLastDate(data);
    await this.adsRepository.save(data);
  }

  async testLoadData() {
    const data = await this.adsProvider.getAdsByDate();
    await this.adsRepository.save(data);
  }
}
