import awilix from 'awilix';
import ContextFactory from '@ilb/node_context';

const { asValue, asFunction, asClass } = awilix;
import container from './container.mjs';
import prisma from '../libs/prisma/prisma.mjs';
import DataSourceFactory from './database/DataSourceFactory';

export default class Application {
  constructor() {
    this.container = null;
  }

  /**
   * initialize application
   */
  async createContainer() {
    this.contextFactory = new ContextFactory({});

    await this.contextFactory.build();

    this.container = awilix.createContainer();
    // register currentUser, datasource, prisma
    this.container.register({
      currentUser: asValue(process.env.USER),
      dataSource: asFunction(DataSourceFactory),
      prisma: asValue(prisma)
    });

    const classes = {};
    for (var [key, value] of container) {
      classes[key] = asClass(value);
    }
    this.container.register(classes);
  }

  /**
   * create scope for http request
   * @param {*} req
   */
  async createScope(req, withSession = false, addScope = null) {
    if (this.container == null) {
      await this.createContainer();
    }

    const scope = this.container.createScope();

    if (addScope) {
      const addScopeValues = {};
      for (var [key, value] of addScope) {
        addScopeValues[key] = asValue(value);
      }
      this.container.register(addScopeValues);
    }
    return scope;
  }

  /**
   * resolve bean by name
   * @param {*} name name of bean
   */
  resolve(name) {
    return this.container.resolve(name);
  }
}
