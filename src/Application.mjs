import awilix from 'awilix';
import ContextFactory from '@ilb/node_context';

const { asValue, asClass } = awilix;
import { UriAccessorFactory, UriAgentFactory } from '@ilb/uriaccessorjs';
import container from './container.mjs';
import prisma from '../libs/prisma/prisma.mjs';

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
      sourceAdsUrl: asValue(process.env.ADSAPI_URL),
      nameSource: asValue(process.env.NAME_SOURCE),
      uriAccessorFileEnabled: asValue(true),
      uriAccessorFactory: asClass(UriAccessorFactory),
      uriAgentFactory: asClass(UriAgentFactory),
      prisma: asValue(prisma),
      dataSourceUrl: asValue(process.env.DATASOURCE_URL),
      dataSourceUser: asValue(process.env.DATASOURCE_USER),
      dataSourcePassword: asValue(process.env.DATASOURCE_PASSWORD)
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
