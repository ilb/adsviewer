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
    const lastDate = await this.getLastDate();
    if (!dateFrom && lastDate) {
      dateFrom = await this.dateFormat(lastDate);
    }
    const data = await this.adsProvider.getAdsByDate(dateFrom, dateTo);

    await this.adsRepository.save(data);
    await this.setLastDate(data);

    console.log(`save data to repo`);
  }

  async testLoadData() {
    const data = await this.adsProvider.getAdsByDate();
    await this.adsRepository.save(data);
  }

  async dateFormat(date) {
    let days = date.getDate();
    let year = date.getFullYear();
    let month = date.getMonth() + 1;
    let hours = date.getHours();
    let minutes = date.getMinutes();
    days = days < 10 ? '0' + days : days;
    month = month < 10 ? '0' + month : month;
    hours = hours < 10 ? '0' + hours : hours;
    minutes = minutes < 10 ? '0' + minutes : minutes;
    let strTime = days + '-' + month + '-' + year + ' ' + hours + ':' + minutes + ':' + '00';
    return strTime;
  }
}
