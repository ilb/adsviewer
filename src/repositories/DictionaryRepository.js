import mysql from 'serverless-mysql';

export default class DictionaryRepository {
  constructor({ dataSource }) {
    this.dataSource = dataSource;

    this.connect = mysql({ config: dataSource });
  }

  async query(query, params) {
    const results = await this.connect.query(query, params);
    await this.connect.end();
    return results;
  }

  async find(params) {
    return await this.query(`select * from DICTIONARY where ?`, params);
  }

  async save(values) {
    const params = [values, values];
    const results = await this.query(
      'INSERT INTO DICTIONARY set ? on duplicate key update ? ',
      params
    );
    return results;
  }
}
