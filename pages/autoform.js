import React from 'react';
import { Container, Message } from 'semantic-ui-react';
import { withRouter } from 'next/router';
import { processUsecase } from '../libs/usecases/index';
import AdsItem from '../components/ads-item';
import AdsFactory from '../components/hoc/adsFactory';

function AutoFormTest({ router, request, response, schema }) {

  function onSubmit() {
    router.push({ pathname: router.pathname, query: router.query });
  }

  const handleChange = (event) => {
    router.replace({
      pathname: router.pathname,
      query: (event.target.name === schema.required[0]) ?
        { case: router.query.case , [event.target.name]: event.target.value} :
        (event.target.name === schema.required[1]) ?
          { case: router.query.case, [schema.required[0]]: router.query.[schema.required[0]], [event.target.name]: event.target.value } :
          { ...router.query, [event.target.name]: event.target.value }
    });
  };

  const props = { response, request, schema, router, onSubmit, handleChange };
  console.log(request);
  return (
    <Container>
      <AdsFactory {...props} />
      <AdsItem {...props} />
    </Container>
  );
}

export default withRouter(AutoFormTest);

export async function getServerSideProps(context) {
  // console.log('Context', context.query.case);
  return processUsecase(context, context.query.case ? context.query.case : 'search');
}
