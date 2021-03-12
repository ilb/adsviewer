import React from 'react';
import styled from 'styled-components';
import { Divider, Segment, Grid, Icon, Image, Menu } from 'semantic-ui-react';

const StyledMenu = styled(Menu)({
  textAlign: 'left!important'
});

function AdList() {
  return (
    <Segment>
      <Grid columns={1} stackable>
        <Grid.Row>
          <Grid columns={3}>
            <Grid.Column textAlign="center">
              <Grid.Row>Дата размещения</Grid.Row>
              <Divider></Divider>
              <Image
                src="https://react.semantic-ui.com/images/wireframe/image.png"
                size="medium"
                wrapped
              />
            </Grid.Column>
            <Grid.Column textAlign="center">
              <Grid.Row>Стоимость</Grid.Row>
              <Divider></Divider>
              <StyledMenu fluid vertical>
                <Menu.Item>Кузов</Menu.Item>
                <Menu.Item>Коробка</Menu.Item>
                <Menu.Item>Год выпуска</Menu.Item>
              </StyledMenu>
            </Grid.Column>
            <Grid.Column textAlign="center">
              <Grid.Row>Продавец</Grid.Row>
              <Divider></Divider>
              <StyledMenu fluid vertical>
                <Menu.Item>Телефон</Menu.Item>
              </StyledMenu>
            </Grid.Column>
          </Grid>
        </Grid.Row>
        <Divider horizontal>
          <Icon name="star"></Icon>
        </Divider>
        <Grid.Row>
          <Grid columns={3}>
            <Grid.Column textAlign="center">
              <Grid.Row>Дата размещения</Grid.Row>
              <Divider></Divider>
              <Image
                src="https://react.semantic-ui.com/images/wireframe/image.png"
                size="medium"
                wrapped
              />
            </Grid.Column>
            <Grid.Column textAlign="center">
              <Grid.Row>Стоимость</Grid.Row>
              <Divider></Divider>
              <StyledMenu fluid vertical>
                <Menu.Item>Кузов</Menu.Item>
                <Menu.Item>Коробка</Menu.Item>
                <Menu.Item>Год выпуска</Menu.Item>
              </StyledMenu>
            </Grid.Column>
            <Grid.Column textAlign="center">
              <Grid.Row>Продавец</Grid.Row>
              <Divider></Divider>
              <StyledMenu fluid vertical>
                <Menu.Item>Телефон</Menu.Item>
              </StyledMenu>
            </Grid.Column>
          </Grid>
        </Grid.Row>
      </Grid>
    </Segment>
  );
}

export default AdList;
