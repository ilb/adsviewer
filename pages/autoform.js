/**
 * Testing prisma request from carmanufacturer
 */

import React from 'react';
import { Container, GridRow, Segment, Grid, Menu, Button } from 'semantic-ui-react';
import { AutoField, AutoFields, AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { withRouter } from 'next/router';
import { processUsecase } from '../libs/usecases/index';
import AutoFormMap from '../utils/autoform-map';

function AutoFormTest({ router, request, schema }) {
  console.log({ request });

  function onSubmit(query) {
    router.push({ pathname: 'it_was_test', query });
  }

  function keyInc() {
    var inc = 0;
    return inc++;
  }


  return (
    <Container>
      <AutoForm
        schema={createSchemaBridge(schema)}
        model={request}
        onSubmit={onSubmit}
        showInlineError={true}
      >
        <Segment>
          <Grid columns={3}>
            {
              AutoFormMap.map((item) => {
                  return (
                    <Grid.Row>
                      <Grid.Column textAlign="right">
                        {item.title}
                      </Grid.Column>
                      <Grid.Column>
                        <AutoField name={item.schema}/>
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
        <Button color='orange'>Получить оценку</Button>
      </AutoForm>
    </Container>
  );
}

export default withRouter(AutoFormTest);

export async function getServerSideProps(context) {
  return processUsecase(context, 'transport');
}