import { processUsecase } from '../../libs/usecases/index';
import { Container, Divider, Grid, Message, Placeholder, Breadcrumb, Segment, Header } from 'semantic-ui-react';
import React from 'react';
import { withRouter } from 'next/router';
import { AutoField, AutoFields, AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../../libs/uniforms';


function Description({ router, request, response, schema }) {
  const { title, description, createdAt, phone, data, categoryId, regionId } = response
  const onClick = () => {
    router.replace('/autoform');
  };
  return (
    <Container>
      <Message textAlign='center'>
        <Message.Header>Объявление.Подробнее</Message.Header>
        <div>Страница находится на стадии разработки.</div>
      </Message>
      <Divider />
      <Breadcrumb>
        <Breadcrumb.Section link onClick={onClick}>Поиск</Breadcrumb.Section>
        <Breadcrumb.Divider />
        <Breadcrumb.Section link>Объявление</Breadcrumb.Section>
        <Breadcrumb.Divider />
        <Breadcrumb.Section active>{title}</Breadcrumb.Section>
      </Breadcrumb>
      <Grid columns={1} stackable>
        <Grid.Row>
          <Grid columns={2} width={7}>
            <Grid.Column textAlign="center">
              <Placeholder>
                <Placeholder.Image square />
              </Placeholder>
            </Grid.Column>
            <Grid.Column>
              <Grid columns={2} width={7}>
                <Grid.Column textAlign="right" >
                  <Grid.Row>Дата размещения</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="left">
                  <Grid.Row>{createdAt}</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="right" >
                  <Grid.Row>Номер</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="left">
                  <Grid.Row>{phone}</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="right" >
                  <Grid.Row>Характеристики</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="left">
                  {Object.keys(data).map((items) => (
                    <Grid.Row key={items}>{data[items]}</Grid.Row>
                  ))}
                </Grid.Column>
              </Grid>
            </Grid.Column>
            <Segment raised>
              <Header as='h3'>Описание</Header>
              {description}
            </Segment>
            <Divider />
          </Grid>
        </Grid.Row>
      </Grid>
      {/*<div>{categoryId}</div>*/}
      {/*<div>{regionId}</div>*/}
    </Container>
  )
}

export default withRouter(Description)

export async function getServerSideProps(context) {
  return processUsecase(context, 'id');
}