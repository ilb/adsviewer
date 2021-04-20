export default class AdsLoader {
  constructor({ adsProvider, lastDateRepository, adsRepository, nameSource, prisma }) {
    this.adsProvider = adsProvider;
    this.lastDateRepository = lastDateRepository;
    this.nameSource = nameSource;
    this.adsRepository = adsRepository;
    this.prisma = prisma;
    this.count = process.env.COUNT || 1000;
    this.timeInterval = process.env.TIME_INTERVAL;
    this.timeFreshAds = process.env.TIME_FRESH_ADS;
    this.adsServerDelay = process.env.ADS_SERVER_DELAY;
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
  async setLastDate(date) {
    await this.lastDateRepository.setDate(this.nameSource, date);
  }
  /**
   *
   * @param dateFrom date string
   * @param dateTo date string
   * upload data to database
   */
  async loadData(dateFrom, dateTo) {
    if (!dateFrom) {
      let date = await this.getLastDate();
      dateFrom = date.lastloaddate;
      const dateTrue = new Date();
      const offset = dateTrue.getTimezoneOffset() / 60;
      const dateOffset = new Date(dateTrue.setHours(dateTrue.getHours() - offset));
      // Check time interval for upload ads
      if (
        dateFrom.valueOf() >=
        dateOffset.valueOf() - (this.timeFreshAds + this.adsServerDelay) * 60000
      ) {
        console.log(dateFrom);
        const message = `Нельзя задавать значение даты начала загрузки ${dateOffset}`;
        await this.prisma.$disconnect();
        throw message;
      }
    }
    if (!dateTo) {
      dateTo = new Date(dateFrom.valueOf() + this.timeInterval * 60000);
      await this.setLastDate(dateTo);
    }

    const data = await this.adsProvider.getAdsByDate(dateFrom, dateTo);
    const dataCount = data.length;

    if (dataCount < 1) {
      console.log(
        `${dataCount} < 1, За данный период времени: ${dateFrom} - ${dateTo} обьявлений не найдено, задайте другой интервал времени`
      );
      await this.prisma.$disconnect();
    }
    await this.adsRepository.saveAll(data);
    console.log(`save data to repo`);

    if (dataCount > 1 && dataCount < this.count) {
      console.log(`${dataCount} < ${this.count}`);
      const lastDateItem = data.pop();
      const newDateTo = new Date(lastDateItem.adsDate);

      setTimeout(() => {
        console.log(`tick: ${newDateTo}`);
        this.loadData(dateFrom, newDateTo);
      }, 5000);
    }
    if (dataCount >= this.count) {
      console.log(`${dataCount} >= ${this.count}`);
      const lastDateItem = data.pop();
      const newDateTo = new Date(lastDateItem.adsDate);

      setTimeout(() => {
        console.log(`tick: ${newDateTo}`);
        this.loadData(dateFrom, newDateTo);
      }, 5000);
    }
  }
  /**
   *
   * @param date
   * @returns string
   */
  // dateFormatOffset(date) {
  //   let days = date.getDate();
  //   let year = date.getFullYear();
  //   let month = date.getMonth() + 1;
  //   // соответствие часовому поясу
  //   let hours = date.getHours() + date.getTimezoneOffset() / 60;
  //   let minutes = date.getMinutes();
  //   days = days < 10 ? '0' + days : days;
  //   month = month < 10 ? '0' + month : month;
  //   hours = hours < 10 ? '0' + hours : hours;
  //   minutes = minutes < 10 ? '0' + minutes : minutes;
  //   const urlTimeString =
  //     year + '-' + month + '-' + days + '+' + hours + ':' + minutes + ':' + '00';
  //   return urlTimeString;
  // }

  // dateFormat(date) {
  //   let days = date.getDate();
  //   let year = date.getFullYear();
  //   let month = date.getMonth() + 1;
  //   // соответствие часовому поясу
  //   let hours = date.getHours();
  //   let minutes = date.getMinutes();
  //   days = days < 10 ? '0' + days : days;
  //   month = month < 10 ? '0' + month : month;
  //   hours = hours < 10 ? '0' + hours : hours;
  //   minutes = minutes < 10 ? '0' + minutes : minutes;
  //   const urlTimeString =
  //     year + '-' + month + '-' + days + '+' + hours + ':' + minutes + ':' + '00';
  //   return urlTimeString;
  // }
}
