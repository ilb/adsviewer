// import xml2js from 'xml2js';
import got from 'got';
import { createWriteStream, createReadStream } from 'fs';
import stream from 'stream';
// import { Transform } from 'stream';
import { promisify } from 'util';
const pipeline = promisify(stream.pipeline);

const TRANSFORMED_FILE_WRITER = 'test/data/catalog.json';
import CatalogsAdapter from '../adapters/CatalogAdapter.mjs';
export default class CatalogProvider {
  constructor({ uriAccessorFactory }) {
    this.uriAccessorFactory = uriAccessorFactory;
    this.catalogsAdapter = new CatalogsAdapter();
    this.url = process.env.CATALOG_URL;
  }

  async getCatalogXML() {
    const downloadStream = got.stream(this.url);
    const fileWriterStream = createWriteStream(process.env.XML_FILE_WRITER);

    downloadStream
      .on('downloadProgress', ({ transferred }) => {
        console.log(`progress: ${transferred}`);
      })
      .on('error', (error) => {
        console.error(`Download failed: ${error.message}`);
      });

    try {
      await pipeline(downloadStream, fileWriterStream);
      console.log(`File downloaded to ${process.env.XML_FILE_WRITER}`);
    } catch (error) {
      console.error(`Something went wrong. ${error.message}`);
    }
  }

  async getData() {
    const uriAccessor = this.uriAccessorFactory.getUriAccessor(this.url);
    const data = await uriAccessor.getContent();
    return await this.catalogsAdapter.convert();
  }

  // async getCatalogJSON() {
  //   await this.getCatalogXML();
  //   const sourceFile = createReadStream(FILE_WRITER);
  //   const destFile = createWriteStream(TRANSFORMED_FILE_WRITER);
  //   const transformToJSON = () => {
  //     return new Transform({
  //       transform(chunk, enc, callback) {
  //         callback(null, chunk.toString());
  //       }
  //     });
  //   };
  //   const dataToJSON = transformToJSON();
  //   destFile.on(`finish`, () => console.log(`Файл скопирован…`));
  //   sourceFile.pipe(dataToJSON).pipe(destFile);
  // }
}
