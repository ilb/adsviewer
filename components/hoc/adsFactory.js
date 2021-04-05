import React from 'react';
import Auto from '../auto';
import DefaultForm from '../default';
import Search from '../search';
import AdsItem from '../ads-item';

const AdsWrapper = (props) => {
  switch (props.request.case) {
    case 'transport':
      return <Auto {...props} />
      break
    case 'default':
      return <DefaultForm {...props} />
      break
    default:
      return <Search {...props}/>
  }
}

const AdsFactory = (props) => {
  return <AdsWrapper {...props}/>
}


export default AdsFactory