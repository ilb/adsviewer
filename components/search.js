import React from 'react'
import pageSwitcher from '../utils/page-switcher';
import { AutoField, AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { Button, Container, Segment } from 'semantic-ui-react';

const Search = ({ router, request, schema }) => {

  function onSubmit(query) {
    router.push({ pathname: router.pathname, query });
  }
  function onChange(query) {
    router.push({ pathname: 'autoform', query: { case: pageSwitcher(query) } } )
  }


  return (
    <Container>
      <AutoForm
        schema={createSchemaBridge(schema)}
        model={request}
        onSubmit={onSubmit}
        showInlineError={true}
      >
        <AutoField name="category" onChange={onChange} />
        <AutoField name="search" />
      </AutoForm>
    </Container>
  )
}

export default Search