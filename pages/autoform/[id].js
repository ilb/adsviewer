import { processUsecase } from '../../libs/usecases/index';
import { Container } from 'semantic-ui-react';
import React from 'react';
import { withRouter } from 'next/router';
import { AutoField, AutoFields, AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../../libs/uniforms';

function Description({ router, request, response, schema }) {
  console.log({ request });
  const { title, description, createdAt, phone, data, categoryId, regionId } = response;
  console.log(title, description, createdAt, phone, data, categoryId, regionId);

  return (
    <Container textAlign="center">
      <divl>{title}</divl>
      <div>{description}</div>
      <div>{createdAt}</div>
      <div>{phone}</div>
      <div>
        {Object.keys(data).map((items) => (
          <div key={items}>{data[items]}</div>
        ))}
      </div>
      <div>{categoryId}</div>
      <div>{regionId}</div>
      {/*<AutoForm scheme={createSchemaBridge(schema)}>*/}
      {/*  <AutoField name="data" />*/}
      {/*</AutoForm>*/}
    </Container>
  );
}

export default withRouter(Description);

export async function getServerSideProps(context) {
  return processUsecase(context, 'id');
}
