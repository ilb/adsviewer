import React from 'react';
import { Button, Form, Icon } from 'semantic-ui-react';
import FormAuto from './form-auto';

function Auto({ response, request, schema, router, onSubmit, handleChange }) {
  const {
    carmanufacturer,
    carmodel,
    year,
    body,
    transmission,
    persons,
    horse,
    volume,
    region
  } = response;

  const transports = {
    carmanufacturer,
    carmodel,
    year,
    body,
    transmission,
    persons,
    horse,
    volume,
    region
  };

  return (
    <Form onSubmit={onSubmit} onChange={handleChange} size="large" textAlign="center">
      <FormAuto options={transports} req={request} />
      <Button animated type="submit" fluid>
        <Button.Content visible>Поиск</Button.Content>
        <Button.Content hidden>
          <Icon name="arrow right" />
        </Button.Content>
      </Button>
    </Form>
  );
}

export default Auto;
