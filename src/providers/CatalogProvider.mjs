import { XMLParser } from 'fast-xml-parser';
import got from 'got';
import { createWriteStream, createReadStream } from 'fs';
import stream from 'stream';
import { Transform } from 'stream';
import { promisify } from 'util';
const pipeline = promisify(stream.pipeline);

const CATALOG_URL = 'https://autoload.avito.ru/format/Autocatalog.xml';
const FILE_WRITER = 'test/data/catalog.xml';
const TRANSFORMED_FILE_WRITER = 'test/data/catalog.json';

export default class CatalogProvider {
  constructor() {}

  async getCatalogXML() {
    const downloadStream = got.stream(CATALOG_URL);
    const fileWriterStream = createWriteStream(FILE_WRITER);

    downloadStream
      .on('downloadProgress', ({ transferred }) => {
        console.log(`progress: ${transferred}`);
      })
      .on('error', (error) => {
        console.error(`Download failed: ${error.message}`);
      });

    try {
      await pipeline(downloadStream, fileWriterStream);
      console.log(`File downloaded to ${FILE_WRITER}`);
    } catch (error) {
      console.error(`Something went wrong. ${error.message}`);
    }
  }

  // dkwefkewkf() {
  //   const parser = new XMLParser();
  //   const tasdasdas = readFileSync(FILE_WRITER);
  //   const fkdfkvdf = parser.parse(tasdasdas);
  //   return fkdfkvdf['Catalog']['Make'][0]['Model'][0];
  // }

  async getCatalogJSON() {
    await this.getCatalogXML();
    const sourceFile = createReadStream(FILE_WRITER);
    const destFile = createWriteStream(TRANSFORMED_FILE_WRITER);
    const parser = new XMLParser();

    const transformToJSON = () => {
      return new Transform({
        transform(chunk, enc, callback) {
          // const jsonData = parser.parse(chunk.toString());
          // console.log(jsonData);
          callback(null, chunk);
        }
      });
    };

    const dataToJSON = transformToJSON();
    destFile.on(`finish`, () => console.log(`Файл скопирован…`));
    sourceFile.pipe(dataToJSON).pipe(destFile);
  }
}
