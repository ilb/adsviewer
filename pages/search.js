import React from 'react';
import { Container, Header } from 'semantic-ui-react';
import { AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { withRouter } from 'next/router';
import application from '../libs/application.mjs';
import AdvertisementCard from '../components/advertisementCard';

function AutoFormPage({ router, request, response, schema }) {
  console.log({ request });

  function onSubmit(query) {
    router.push({ pathname: 'autoform', query });
  }

  const data = [
    {
      id: 1,
      name: 'KIA Soul',
      phone: '+798364994739',
      img: 'images/car.jpg',
      date: '12 сентября 2020',
      seller: 'Igor Nikolaevich',
      price: '219000 р'
    },
    {
      id: 2,
      name: 'Hyundai Solaris',
      phone: '+793738368739',
      img: 'images/car2.jpg',
      date: '20 июня 2019',
      seller: 'Valentina',
      price: '390000 р'
    }
  ];

  return (
    <Container>
      <AutoForm
        schema={createSchemaBridge(schema)}
        model={request}
        onSubmit={onSubmit}
        showInlineError={true}
      />
      {response.greeting && <Header as="h1">{response.greeting}</Header>}
      <div className="ui inverted divider"></div>
      {data.map((car) => {
        return (
          <div key={car.id}>
            <AdvertisementCard {...car} />
          </div>
        );
      })}
    </Container>
  );
}
export default withRouter(AutoFormPage);

export async function getServerSideProps({ query: request, req }) {
  const scope = await application.createScope(req);
  const usecase = scope.resolve('search');
  const props = {
    request,
    response: await usecase.process(request),
    schema: await usecase.getSchema(request)
  };
  return { props };
}
