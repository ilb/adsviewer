// import xml2js from 'xml2js';
import got from 'got';
import { createWriteStream, createReadStream } from 'fs';
import stream from 'stream';
// import { Transform } from 'stream';
import { promisify } from 'util';

const TRANSFORMED_FILE_WRITER = 'test/data/catalog.json';
export default class CatalogProvider {
  constructor({ uriAccessorFactory, catalogAdapter }) {
    this.uriAccessorFactory = uriAccessorFactory;
    this.catalogsAdapter = catalogAdapter;
    this.url = process.env.CATALOG_URL;
    this.content = null;
  }

  async getData() {
    const downloadStream = got.stream(this.url);
    const chunks = [];

    downloadStream // stream.isReadable(downloadStream) === true;
      .on('downloadProgress', ({ transferred }) => {
        console.log(`progress: ${transferred}`);
      })
      .on('readable', () => {
        let chunk;
        while (null !== (chunk = downloadStream.read())) {
          chunks.push(chunk);
        }
      })
      .on('end', async () => {
        this.content = chunks.join('');
        await this.catalogsAdapter.convert(this.content);
      })
      .on('error', (error) => {
        console.error(`Download failed: ${error.message}`);
      });
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
