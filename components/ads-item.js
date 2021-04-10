import React from 'react';
import { Segment, Grid, Image, Divider, Menu, Message } from 'semantic-ui-react';

const AdsItem = ({ response: { adsdata }, router }) => {
  // console.log("ADSDATA", adsdata);
  const handleClick = (id) => {
    // console.log("event", id)
    router.push(`/autoform/${id}`);
  };

  // console.log("AdsItem", JSON.parse(adsdata))

  const adsItems = adsdata ? JSON.parse(adsdata) : null;
  return adsItems ? (
    adsItems.map(({ id, picture, adsDate, title, phone, data, images, category, region }) => {
      const dataslice = Object.fromEntries(Object.entries(data).slice(4, 8));
      // console.log('data for ads list', dataslice);
      // console.log('images', images);
      return (
        <Segment key={id} onClick={() => handleClick(id)}>
          <Grid columns={1} stackable>
            <Grid.Row>
              <Grid columns={3}>
                <Grid.Column textAlign="center">
                  <Grid.Row>Дата размещения</Grid.Row>
                  <Grid.Row>{adsDate}</Grid.Row>
                  <Divider></Divider>
                  <Image
                    src={
                      images[0]
                        ? images[0].href
                        : 'https://lojasavanna.com.br/Handlers/Imagens/img.aspx?id=83&img=0_FT_1.jpg&tp=jpg&x=750&y=750'
                    }
                    size="medium"
                    wrapped
                  />
                </Grid.Column>
                <Grid.Column textAlign="center">
                  <Grid.Row>Стоимость</Grid.Row>
                  <Grid.Row>200 000 рублей</Grid.Row>
                  <Divider></Divider>
                  <Menu fluid vertical>
                    <Menu.Item>{title}</Menu.Item>
                    {dataslice
                      ? Object.keys(dataslice).map((items) => (
                          <Menu.Item key={items}>{dataslice[items]}</Menu.Item>
                        ))
                      : 'Нет данных'}
                  </Menu>
                </Grid.Column>
                <Grid.Column textAlign="center">
                  <Grid.Row>Продавец</Grid.Row>
                  <Grid.Row>Тест Тестович</Grid.Row>
                  <Divider></Divider>
                  <Menu fluid vertical>
                    <Menu.Item>Телефон</Menu.Item>
                    <Menu.Item>{phone}</Menu.Item>
                    <Menu.Item>Регион</Menu.Item>
                    <Menu.Item>{}</Menu.Item>
                  </Menu>
                </Grid.Column>
              </Grid>
            </Grid.Row>
          </Grid>
        </Segment>
      );
    })
  ) : (
    <Message visible>Страница в разработке</Message>
  );
};

export default AdsItem;
