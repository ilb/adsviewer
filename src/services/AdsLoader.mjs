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
    const dataLastElem = data.pop();
    const lastDate = new Date(dataLastElem.adsDate);
    await this.lastDateRepository.setDate(this.nameSource, lastDate);
    console.log(`add last date to repo, date: ${lastDate}`);
  }
  /**
   *
   * @param dateFrom date string
   * @param dateTo date string
   * upload data to database
   */
  async loadData(dateFrom, dateTo) {
    const data = await this.adsProvider.getAdsByDate(dateFrom, dateTo);
    console.log(`Count ${data.length()}`);
    await this.adsRepository.save(data);
    await this.setLastDate(data);
    console.log(`save data to repo`);
  }

  async testLoadData() {
    const data = await this.adsProvider.getAdsByDate();
    await this.adsRepository.save(data);
  }
}
