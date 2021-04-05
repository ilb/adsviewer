import React from 'react';
<<<<<<< HEAD
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
=======
import { Button, Container, Form, Grid, Icon } from 'semantic-ui-react';
>>>>>>> master

  return (
<<<<<<< HEAD
    <Form
      onSubmit={() => console.log(request)}
      onChange={handleChange}
      size="large"
      textAlign="center">
=======
    <Form.Field>
      <Grid columns={3} columns="equal" verticalAlign="middle">
        <Grid.Row divided>
          {Object.keys(options).map((items, index) => (
            <React.Fragment key={index}>
              <Grid.Column textAlign="right" width={5}>
                <LabelReturn items={items} />
              </Grid.Column>
              <Grid.Column textAlign="right" width={8}>
                <MapForm options={options} items={items} />
              </Grid.Column>
              <Grid.Column textAlign="left"></Grid.Column>
            </React.Fragment>
          ))}
        </Grid.Row>
      </Grid>
    </Form.Field>
  );
}

function LabelReturn({ items }) {
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

function MapForm({ options, items }) {
  // console.log('Region', items, options[items])
  return items == 'region' ? (
    <select name={`${items}`}>
      {options[items].map(({ name, code }) => (
        <option key={name} value={code}>
          {name}
        </option>
      ))}
    </select>
  ) : (
    <select name={`${items}`}>
      {options[items].map((item) => (
        <option key={item} value={item}>
          {item}
        </option>
      ))}
    </select>
  );
}

const Auto = ({ response, handleChange, onSubmit }) => {
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
>>>>>>> master
      <FormAuto options={transports} />
      <Button animated type="submit">
        <Button.Content visible>Поиск</Button.Content>
        <Button.Content hidden>
          <Icon name="arrow right" />
        </Button.Content>
      </Button>
    </Form>
  );
<<<<<<< HEAD
}
=======
};
>>>>>>> master

export default Auto;
