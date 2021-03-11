import React from 'react';
import App from 'next/app';

import 'semantic-ui-offline/semantic.min.css';
import 'react-datepicker/dist/react-datepicker.css';

class MyApp extends App {
  render() {
    const { Component, pageProps } = this.props;
    return <Component {...pageProps} />;
  }
}

export default MyApp;
