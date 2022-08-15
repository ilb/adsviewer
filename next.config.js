// const isProd = process.env.NODE_ENV === 'production';

const withPlugins = require('next-compose-plugins');
const withTM = require('next-transpile-modules')([
  'uniforms-bridge-json-schema',
  'uniforms',
  'uniforms-semantic',
  '@ilb/uniformscomponents',
  'ajv'
]);
const basePath = '/adsviewer';
module.exports = withPlugins([withTM], {
  basePath,
  assetPrefix: basePath,
  eslint: {
    // Warning: This allows production builds to successfully complete even if
    // your project has ESLint errors.
    ignoreDuringBuilds: true
  }
});
