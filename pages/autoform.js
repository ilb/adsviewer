import React from 'react';
import { Container, Message } from 'semantic-ui-react';
import { withRouter } from 'next/router';
import { processUsecase } from '../libs/usecases/index';
import AdsItem from '../components/ads-item';
import Auto from '../components/auto';
import DefaultForm from '../components/default';
import Search from '../components/search';
import AdsFactory from '../components/hoc/adsFactory';

function AutoFormTest({ router, request, response, schema }) {

  // console.log("RESPONCE", {response});
  // console.log("REQUEST", {request});
  // console.log("router", {router});

  function onSubmit() {
    router.push({ pathname: router.pathname, query: router.query });
    // console.log("onSubmit: ")
  }

  const handleChange = (event) => {
    // console.log("onChange ", event.target.name, event.target.value)
    router.replace({ pathname: router.pathname, query: { ...router.query, [event.target.name]: event.target.value } });
 }

  const props = { response, request, schema, router, onSubmit, handleChange }

  return (
    <Container>
      <AdsFactory {...props} />
      <AdsItem {...props} />
    </Container>
  );
}

export default withRouter(AutoFormTest)

export async function getServerSideProps(context) {
  console.log("Context", context.query.case)
  return processUsecase(context, context.query.case ? context.query.case : 'search' );
}