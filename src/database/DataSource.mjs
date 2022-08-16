import urlapi from 'url';

export default class DataSource {
  constructor({ dataSourceUrl, dataSourceUser, dataSourcePassword }) {
    const dbconf = urlapi.parse(dataSourceUrl);
    this.host = dbconf.hostname;
    this.database = dbconf.pathname.replace('/', '');
    this.user = dataSourceUser;
    this.password = dataSourcePassword;
    this.dateStrings = ['DATE', 'DATETIME'];
  }
}
