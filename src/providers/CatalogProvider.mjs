import fetch from 'node-fetch';
import { XMLParser } from 'fast-xml-parser';
import got from 'got';
import { createWriteStream, createReadStream } from 'fs';
import { Transform } from 'stream';

const CATALOG_URL = 'https://autoload.avito.ru/format/Autocatalog.xml';
const FILE_WRITER = 'test/data/catalog.xml';
const TRANSFORMED_FILE_WRITER = 'test/data/catalog.json';

export default class CatalogProvider {
  constructor() {}

  // async getAdsByDate() {
  //   const parser = new XMLParser();
  //   let jObj = parser.parse(XMLdata);
  // }

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

  getCatalogJSON() {
    const sourceFile = createReadStream(FILE_WRITER);
    const destFile = createWriteStream(TRANSFORMED_FILE_WRITER);
    const transformToJSON = () => {
      
    }

    const
    destFile.on(`finish`, () => console.log(`Файл скопирован…`));
    sourceFile.pipe(destFile);
  }
}
