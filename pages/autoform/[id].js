import { processUsecase } from '../../libs/usecases/index';
// eslint-disable-next-line prettier/prettier
import { Container, Divider, Grid, Message, Placeholder, Breadcrumb, Segment, Header, Image } from 'semantic-ui-react';
import React, { useState } from 'react';
import { withRouter } from 'next/router';
import { AutoField, AutoFields, AutoForm } from 'uniforms-semantic';
import { createSchemaBridge } from '../../libs/uniforms';

function Description({ router, response }) {
  console.log(response);
  console.log(router);
  const { title, description, adsDate, phone, data, links } = response;

  const onClick = () => {
    router.replace('/autoform');
  };
  const date = new Date(JSON.parse(adsDate));

  const adsDateFormat = date.toLocaleDateString('ru', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
    hour: 'numeric',
    minute: 'numeric'
  });

  const initialState = { href: links[0].href };

  const [img, setImg] = useState(initialState);

  const setHref = (str) => {
    // console.log("STR", img)
    setImg({ href: str.target.currentSrc });
  };

  return (
    <Container>
      <Message textAlign="center">
        <Message.Header>Объявление.Подробнее</Message.Header>
        <div>Страница находится на стадии разработки.</div>
      </Message>
      <Divider />
      <Breadcrumb>
        <Breadcrumb.Section link onClick={onClick}>
          Поиск
        </Breadcrumb.Section>
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
                <Image
                  square
                  src={
                    img.href
                      ? img.href
                      : 'https://lojasavanna.com.br/Handlers/Imagens/img.aspx?id=83&img=0_FT_1.jpg&tp=jpg&x=750&y=750'
                  }
                />
              </Placeholder>
            </Grid.Column>
            <Grid.Column>
              <Grid columns={2} width={7}>
                <Grid.Column textAlign="right">
                  <Grid.Row>Дата размещения</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="left">
                  <Grid.Row>{adsDateFormat}</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="right">
                  <Grid.Row>Номер</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="left">
                  <Grid.Row>{phone}</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="right">
                  <Grid.Row>Характеристики</Grid.Row>
                </Grid.Column>
                <Grid.Column textAlign="left">
                  {Object.keys(data).map((items) => (
                    <Grid.Row key={items}>{data[items]}</Grid.Row>
                  ))}
                </Grid.Column>
              </Grid>
            </Grid.Column>
            <Image.Group size="tiny">
              {links.map(({ href }, index) => (
                <Image key={index} src={href} onClick={setHref} />
              ))}
            </Image.Group>
            <Segment raised>
              <Header as="h3">Описание</Header>
              {description}
            </Segment>
            <Divider />
          </Grid>
        </Grid.Row>
      </Grid>
    </Container>
  );
}

export default withRouter(Description);

export async function getServerSideProps(context) {
  return processUsecase(context, 'id');
}
