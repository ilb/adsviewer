/**
 * Testing prisma request from carmanufacturer
 */

import React from 'react';
import { Container } from 'semantic-ui-react';
import { AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { withRouter } from 'next/router';
import { processUsecase } from '../libs/usecases/index';

function AutoFormTest({ router, request, schema }) {
  console.log({ request });

  function onSubmit(query) {
    router.push({ pathname: 'it_was_test', query });
  }

  return (
    <Container>
      <AutoForm
        schema={createSchemaBridge(schema)}
        model={request}
        onSubmit={onSubmit}
        showInlineError={true}
      />
    </Container>
  );
}
export default withRouter(AutoFormTest);

export async function getServerSideProps(context) {
  return processUsecase(context, 'autoform');
}