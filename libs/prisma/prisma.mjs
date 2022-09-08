import { PrismaClient } from '@prisma/client';
import { getLogger } from '../logger/logger.mjs';
const logger = getLogger({ name: 'CatalogService' });

const prisma = new PrismaClient({
  log: [
    {
      emit: 'event',
      level: 'query'
    },
    {
      emit: 'stdout',
      level: 'error'
    },
    {
      emit: 'stdout',
      level: 'info'
    }
  ]
});

prisma.$use(async (params, next) => {
  const before = Date.now();
  const result = await next(params);
  const after = Date.now();
  // logger.info(`Query ${params.model}.${params.action} took ${after - before}ms`);
  return result;
});

// prisma.$on('query', (e) => {
//   logger.info('Query: ' + e.query);
//   logger.info('Params: ' + e.params);
//   logger.info('Duration: ' + e.duration + 'ms');
// });

export default prisma;
