import { XMLParser } from 'fast-xml-parser';
import got from 'got';
import { createWriteStream, createReadStream, readFileSync } from 'fs';
import { Transform } from 'stream';

const CATALOG_URL = 'https://autoload.avito.ru/format/Autocatalog.xml';
const FILE_WRITER = 'test/data/catalog.xml';
const TRANSFORMED_FILE_WRITER = 'test/data/catalog.json';
import CatalogsAdapter from '../adapters/CatalogAdapter.mjs';
export default class CatalogProvider {
  constructor({ uriAccessorFactory }) {
    this.uriAccessorFactory = uriAccessorFactory;
    this.catalogsAdapter = new CatalogsAdapter();
    this.url = process.env.CATALOG_URL;
  }

  getCatalogXML() {
    const downloadStream = got.stream(CATALOG_URL);
    const fileWriterStream = createWriteStream(FILE_WRITER);

    downloadStream
      .on('downloadProgress', ({ transferred }) => {
        console.log(`progress: ${transferred}`);
      })
      .on('error', (error) => {
        console.error(`Download failed: ${error.message}`);
      });

    fileWriterStream
      .on('error', (error) => {
        console.error(`Could not write file to system: ${error.message}`);
      })
      .on('finish', () => {
        console.log(`File downloaded to ${FILE_WRITER}`);
      });

    downloadStream.pipe(fileWriterStream);
  }

  // dkwefkewkf() {
  //   const parser = new XMLParser();
  //   const tasdasdas = readFileSync(FILE_WRITER);
  //   const fkdfkvdf = parser.parse(tasdasdas);
  //   return fkdfkvdf['Catalog']['Make'][0]['Model'][0];
  // }

  getCatalogJSON() {
    const sourceFile = createReadStream(FILE_WRITER);
    const destFile = createWriteStream(TRANSFORMED_FILE_WRITER);
    const parser = new XMLParser();

    const transformToJSON = () => {
      return new Transform({
        transform(chunk, enc, callback) {
          const xmlToString = chunk.toString();
          // const jsonData = parser.parse xmlToString);
          callback(null, xmlToString);
        }
      });
    };

    const dataToJSON = transformToJSON();
    destFile.on(`finish`, () => console.log(`Файл скопирован…`));
    sourceFile.pipe(dataToJSON).pipe(destFile);
  }

  async getData() {
    const uriAccessor = this.uriAccessorFactory.getUriAccessor(this.url);
    const data = await uriAccessor.getContent();
    return this.catalogsAdapter.convert(data);
  }
}
