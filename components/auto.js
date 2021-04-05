import React from 'react';
import { Button, Form, Icon } from 'semantic-ui-react';
import FormAuto from './form-auto';

function Auto({ response, handleChange, onSubmit }) {
  console.log();
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

  // console.log("Transports", transports)

  return (
    <Form onSubmit={onSubmit} onChange={handleChange} size="large" textAlign="center">
      <FormAuto options={transports} />
      <Button animated type="submit">
        <Button.Content visible>Поиск</Button.Content>
        <Button.Content hidden>
          <Icon name="arrow right" />
        </Button.Content>
      </Button>
    </Form>
  );
}

export default Auto;
