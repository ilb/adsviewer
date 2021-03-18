import React from 'react';
import { Segment, Grid, Image, Divider, Menu } from 'semantic-ui-react';


export default function AdsItem({picture, title, number, price, seller, date, description }) {
  return (
    <React.Fragment>
      <Segment>
        <Grid columns={1} stackable>
          <Grid.Row>
            <Grid columns={3}>
              <Grid.Column textAlign="center">
                <Grid.Row>Дата размещения</Grid.Row>
                <Grid.Row>{date}</Grid.Row>
                <Divider></Divider>
                <Image
                  src={ picture ? picture : "https://lojasavanna.com.br/Handlers/Imagens/img.aspx?id=83&img=0_FT_1.jpg&tp=jpg&x=750&y=750"}
                  size="medium"
                  wrapped
                />
              </Grid.Column>
              <Grid.Column textAlign="center">
                <Grid.Row>Стоимость</Grid.Row>
                <Grid.Row>{price}</Grid.Row>
                <Divider></Divider>
                <Menu fluid vertical>
                  <Menu.Item>{title}</Menu.Item>
                  <Menu.Item>{description}</Menu.Item>
                </Menu>
              </Grid.Column>
              <Grid.Column textAlign="center">
                <Grid.Row>Продавец</Grid.Row>
                <Grid.Row>{seller}</Grid.Row>
                <Divider></Divider>
                <Menu fluid vertical>
                  <Menu.Item>Телефон</Menu.Item>
                  <Menu.Item>{number}</Menu.Item>
                </Menu>
              </Grid.Column>
            </Grid>
          </Grid.Row>
        </Grid>
      </Segment>
    </React.Fragment>
  )
}