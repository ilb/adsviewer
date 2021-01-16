import awilix from 'awilix';
// const { asValue } = awilix;

export default class Application {
  constructor() {
    this.container = null;
  }

  /**
   * initialize application
   */
  async createContainer() {
    this.container = awilix.createContainer();
    // register currentUser, datasource
    this.container.register({
      currentUser: awilix.asValue(process.env.USER)
    });

    // autoscan modules
    await this.container.loadModules(['src/usecases/**/*.mjs'], {
      formatName: 'camelCase',
      esModules: true
    });
  }

  /**
   * create scope for http request
   * @param {*} req
   */
  async createScope(req) {
    if (this.container == null) {
      await this.createContainer();
    }
    const xRemoteUser = req && req.headers && req.headers['x-remote-user'];
    const currentUser = xRemoteUser || process.env.USER;

    const scope = this.container.createScope();
    scope.register({ currentUser });

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

export const application = new Application();
