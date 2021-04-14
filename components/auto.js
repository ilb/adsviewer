import React from 'react';
import { createSchemaBridge, CustomAutoField } from '@ilb/uniformscomponents';
import { AutoForm } from 'uniforms-semantic';

function Auto({ response, request, schema, router, onSubmit, handleChange }) {
  function onChange(query) {
    console.log('onChangeModel', query);
    router.push({ pathname: router.pathname, query: { case: router.query.case, ...query } });
  }

  return (
    <React.Fragment>
      <AutoForm
        schema={createSchemaBridge(schema)}
        model={request}
        onSubmit={onSubmit}
        onChangeModel={onChange}
        autoField={CustomAutoField}
      />
    </React.Fragment>
  );
}

export default Auto;
