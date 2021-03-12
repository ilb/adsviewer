import React from 'react';
import { Container, Header } from 'semantic-ui-react';
import { AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { withRouter } from 'next/router';
import application from '../libs/application.mjs';
import AdList from './_adlist';

function AutoFormPage({ router, request, response, schema }) {
  console.log({ request });

  function onSubmit(query) {
    router.push({ pathname: 'autoform', query });
  }

  return (
    <Container>
      <AutoForm
        schema={createSchemaBridge(schema)}
        model={request}
        onSubmit={onSubmit}
        showInlineError={true}
      />
      {response.greeting && <Header as="h1">{response.greeting}</Header>}
      <AdList></AdList>
    </Container>
  );
}
export default withRouter(AutoFormPage);

export async function getServerSideProps({ query: request, req }) {
  const scope = await application.createScope(req);
  const usecase = scope.resolve('search');
  const props = {
    request,
    response: await usecase.process(request),
    schema: await usecase.getSchema(request)
  };
  return { props };
}
