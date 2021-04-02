/**
 * Testing prisma request from carmanufacturer
 */

import React, { useState } from 'react';
import { Container, GridRow, Segment, Grid, Menu, Header, Form, Button, Icon } from 'semantic-ui-react';
import { AutoField, AutoFields, AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { withRouter } from 'next/router';
import { processUsecase } from '../libs/usecases/index';
import AutoFormMap from '../utils/autoform-map';
import AdsFormTransport from '../components/ads-item';

function LabelReturn({items}) {
  switch (items) {
    case 'carmanufacturer':
      return <label>Марка</label>;
    case 'carmodel':
      return <label>Модель</label>;
    case 'year':
      return <label>Год выпуска</label>;
    case 'body':
      return <label>Кузов</label>;
    case 'transmission':
      return <label>Трансмиссия</label>;
    case 'persons':
      return <label>Количество владельцев по ПТС</label>;
    case 'horse':
      return <label>Мощность двигателя</label>;
    case 'volume':
      return <label>Объем двигателя</label>;
    case 'region':
      return <label>Регион</label>;
    default:
      return <label>Ошибка</label>;
  }
}

function MapForm({options, items} ) {
  // console.log('Region', items, options[items])
  return (items == 'region')
    ?
      <select name={`${items}`}>
        {options[items].map(({name, code}) => (
          <option key={name} value={code}>
            {name}
          </option>
        ))}
      </select>
    :
      <select name={`${items}`}>
        {options[items].map((item) => (
          <option key={item} value={item}>
            {item}
          </option>
        ))}
      </select>
}


function FormAuto({ options }) {
  // console.log("FormAuto", options )
  // console.log("FormAuto object keys", Object.keys(options) )
  return (
    <Form.Field>
      <Grid columns={3}  columns='equal' verticalAlign='middle'>
        <Grid.Row divided>
        {Object.keys(options).map((items) => (
          <>
            <Grid.Column textAlign="right" width={5}>
              <LabelReturn items={items}/>
            </Grid.Column>
            <Grid.Column textAlign="right" width={8}>
              <MapForm options={options} items={items}/>
            </Grid.Column>
            <Grid.Column textAlign="left">
            </Grid.Column>
          </>
            )
        )}
        </Grid.Row>
      </Grid>
    </Form.Field>
  )
}


function AutoFormTest({ router, request, response, schema }) {

  const { carmanufacturer, carmodel, year, body, transmission, persons, horse, volume, region } = response

  const transports = {  carmanufacturer, carmodel, year, body, transmission, persons, horse, volume, region }

  // console.log("Transports", transports)

  console.log("RESPONCE", {response});
  console.log("REQUEST", {request});
  console.log("router", {router});

  function onSubmit() {
    router.push({ pathname: router.pathname, query: router.query });
    // console.log("onSubmit: ")
  }

  const handleChange = (event) => {
    //console.log("onChange ", event.target.name, event.target.value)
    router.replace({ pathname: router.pathname, query: { ...router.query, [event.target.name]: event.target.value } });
    //to test click this: http://localhost:3000/adsviewer/autoform?carmanufacturer=Aston+Martin&carmodel=DBS&body=8&horse=517&transmission=2&volume=5.9&region=%D0%91%D0%B0%D1%88%D0%BA%D0%BE%D1%80%D1%82%D0%BE%D1%81%D1%82%D0%B0%D0%BD&year=2015&persons=2
  }


  return (
    <Container textAlign='center'>
      <Form onSubmit={onSubmit} onChange={handleChange} size="large">
        <FormAuto options={transports}/>
        <Button animated type="submit">
          <Button.Content visible>
            Получить оценку
          </Button.Content>
          <Button.Content hidden>
            <Icon name='arrow right'/>
          </Button.Content>
        </Button>
      </Form>

      {/*<AutoForm*/}
      {/*  schema={createSchemaBridge(schema)}*/}
      {/*  model={request}*/}
      {/*  showInlineError={true}*/}
      {/*>*/}
      {/*</AutoForm>*/}

      {/*<AdsFormTransport request={request} router={router} />*/}
    </Container>
  );
}

export default withRouter(AutoFormTest);

export async function getServerSideProps(context) {
  return processUsecase(context, 'transport');
}