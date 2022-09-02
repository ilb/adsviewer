import xml2js from 'xml2js';
import { promises as fs} from 'fs';
import { promisify } from 'util';
const readFileAsync = promisify(fs.readFile);

export default class CatalogAdapter {
  constructor() {}
  /**
   *
   * @param {XML} data
   * @returns Object
   */
  async convert() {
    const parser = new xml2js.Parser();
    const fileData = await fs.readFile(process.env.XML_FILE_WRITER);
    return await parser.parseStringPromise(fileData);
  }
}
