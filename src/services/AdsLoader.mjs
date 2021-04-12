export default class AdsLoader {
  constructor(adsProvider, lastDateRepository, adsRepository, nameSource, prisma) {
    this.adsProvider = adsProvider;
    this.lastDateRepository = lastDateRepository;
    this.nameSource = nameSource;
    this.adsRepository = adsRepository;
    this.prisma = prisma;
    this.count = process.env.COUNT || 1000;
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
    const formatDateFrom =
      typeof dateFrom === 'string' ? dateFrom : await this.dateFormat(dateFrom);
    const formatDateTo = typeof dateTo === 'string' ? dateTo : await this.dateFormat(dateTo);
    const data = await this.adsProvider.getAdsByDate(formatDateFrom, formatDateTo);
    const dataCount = data.length;
    await this.adsRepository.save(data);
    console.log(`save data to repo`);

    if (dataCount < 1) {
      console.log(
        `${dataCount} < 1, За данный период времени: ${formatDateFrom} - ${formatDateTo} обьявлений не найдено, задайте другой интервал времени`
      );
      return;
    }
    if (dataCount > 1 && dataCount < this.count) {
      console.log(`${dataCount} < ${this.count}`);
      const lastDateItem = data.pop();
      const newDateTo = await this.dateFormat(new Date(lastDateItem.adsDate));
      await this.setLastDate(data);

      setTimeout(() => {
        console.log(`tick: ${newDateTo}`);
        this.loadData(formatDateFrom, newDateTo);
      }, 5000);
    }
    if (dataCount >= this.count) {
      console.log(`${dataCount} >= ${this.count}`);
      const lastDateItem = data.pop();
      const newDateTo = await this.dateFormat(new Date(lastDateItem.adsDate));

      setTimeout(() => {
        console.log(`tick: ${newDateTo}`);
        this.loadData(formatDateFrom, newDateTo);
      }, 5000);
    }
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
    const urlTimeString =
      year + '-' + month + '-' + days + '+' + hours + ':' + minutes + ':' + '00';
    return urlTimeString;
  }
}
