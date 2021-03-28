/**
 * Testing prisma request from carmanufacturer
 */

import React, { useState } from 'react';
import { Container, GridRow, Segment, Grid, Menu, Button } from 'semantic-ui-react';
import { AutoField, AutoFields, AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { withRouter } from 'next/router';
import { processUsecase } from '../libs/usecases/index';
import AutoFormMap from '../utils/autoform-map';

function AutoFormTest({ router, request, response, schema }) {

  console.log("RESPONCE", {response});
  console.log("REQUEST", {request});
  console.log("router", {router});

  function onSubmit() {
    router.push({ pathname: router.pathname, query: router.query });
    console.log("onSubmit: ")
  }

  const onChange = (query, req) => {
    console.log("onChange ", query, req)
    router.replace({ pathname: router.pathname, query: { ...router.query, [query]: req } });
    //to test click this: http://localhost:3000/adsviewer/autoform?carmanufacturer=Aston+Martin&carmodel=DBS&body=8&horse=517&transmission=2&volume=5.9&region=%D0%91%D0%B0%D1%88%D0%BA%D0%BE%D1%80%D1%82%D0%BE%D1%81%D1%82%D0%B0%D0%BD&year=2015&persons=2
  }


  return (
    <Container>
      <AutoForm
        schema={createSchemaBridge(schema)}
        model={request}
        onChange={onChange}
        showInlineError={true}
      >
        <Segment>
          <Grid columns={3}>
            {
              AutoFormMap.map((item) => {
                  return (
                    <Grid.Row key={item.id}>
                      <Grid.Column textAlign="right">
                        {item.title}
                      </Grid.Column>
                      <Grid.Column>
                        <AutoField name={item.schema} />
                      </Grid.Column>
                      <Grid.Column textAlign="left">
                        Test
                      </Grid.Column>
                    </Grid.Row>
                  );
                }
              )
            }
          </Grid>
        </Segment>
        <Button onClick={onSubmit} color='orange'>Получить оценку</Button>
      </AutoForm>
    </Container>
  );
}

export default withRouter(AutoFormTest);

export async function getServerSideProps(context) {
  return processUsecase(context, 'transport');
}