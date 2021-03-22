import React from 'react';
import { Container, Header } from 'semantic-ui-react';
import { AutoField, AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../libs/uniforms';
import { withRouter } from 'next/router';
import { processUsecase } from '../libs/usecases/index';
import AdsItem from '../components/ads-item';
import pageSwitcher from '../utils/page-switcher';

function AutoFormPage({ router, request, response, schema }) {
  console.log({ request });

  function onSubmit(query) {
    router.push({ pathname: 'autoform', query });
  }
  function onChange(query) {
    router.push({ pathname: pageSwitcher(query)})
  }

  const testdata = [{ id: 1,
    picture: 'https://main-cdn.goods.ru/big2/hlr-system/1660814109/600000573963b3.jpeg',
    title: 'Шапка на голову', number: '+234634623',
    price: '605 руб.', seller: 'Igor Nikolaevich',
    date: ' 1 января 2019', description: "Очень теплая зимняя шапка"
,
      },
    {id: 2,
      picture: 'https://giftprime.ru/wp-content/uploads/2017/09/7308.60_1_tif_1000x1000.jpg',
      title: 'Хороший коробка', number: '+3426534264',
      price: '500 руб.', seller: 'Маргарита Ивановна',
      date: '12 авг 2020', description: "Удобная коробочка для хранения"
    },
    {id: 3,
      picture: 'https://im0-tub-ru.yandex.net/i?id=2998dd983e3e30ee7c17696dc6d08bc5&n=13&exp=1',
      title: 'Хороший коробка', number: '+3426534264',
      price: '500 руб.', seller: 'Маргарита Ивановна',
      date: '17 авг 2020', description: "Удобная коробочка для хранения носочков"
    }];

  return (
    <Container>
      <AutoForm
        schema={createSchemaBridge(schema)}
        model={request}
        onSubmit={onSubmit}
        showInlineError={true}
      >
        <AutoField name="category" onChange={onChange} />
        <AutoField name="q" />
      </AutoForm>

      {response.greeting && <Header as="h1">{response.greeting}</Header>}
      { testdata.map((items) => {
          return (
            <div key={items.id}>
              <AdsItem {...items} />
            </div>
          )
        }) }
    </Container>
  );
}
export default withRouter(AutoFormPage);

export async function getServerSideProps(context) {
  return processUsecase(context, 'search');
}
