import React from 'react';
import { Container, Header } from 'semantic-ui-react';
import { AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { withRouter } from 'next/router';
import { application } from '../src/Application.mjs';

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
    </Container>
  );
}
export default withRouter(AutoFormPage);

export async function getServerSideProps({ query: request, req }) {
  const scope = await application.createScope(req);
  const usecase = scope.resolve('registration');
  const props = {
    request,
    response: await usecase.process(request),
    schema: usecase.getSchema(request)
  };
  return { props };
}
