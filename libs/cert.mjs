// import contextFactory from '@ilb/node_context/src/context';
import {
  configureCert,
  configureAgentConfig,
  configureGlobalAgentConfig
} from '@ilb/uriaccessorjs';
import createDebug from 'debug';
const debug = createDebug('adsviewer');

function configureCertApp() {
  const certfile = process.env['apps.cashreceiptrobot.certfile'];
  const passphrase = process.env['apps.cashreceiptrobot.cert_PASSWORD'];
  debug('configure cert App path=%o, pass=%o', certfile, passphrase);
  return configureCert(certfile, passphrase);
}

// настройка глобального сертификата для node-fetch
const certConfig = configureCertApp();
configureGlobalAgentConfig(certConfig);
export const agent = configureAgentConfig(certConfig);

export const uriAgentMap = new Map();
uriAgentMap.set('https', agent);
