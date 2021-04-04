import React from 'react';
import { Segment, Grid, Image, Divider, Menu } from 'semantic-ui-react';


const AdsItem = ({ response: { adsdata }, router } ) => {

  const handleClick = (id) => {
    console.log("event", id)
    router.push(`/autoform/${id}`)
  }

  // console.log("AdsItem", JSON.parse(adsdata))

  const adsItems = JSON.parse(adsdata)

  return (
    adsItems.map(({id, picture, adsDate, title, description, phone, data, category, region}) => {
      return (
          <React.Fragment>
            <Segment key={id} onClick={() => handleClick(id)}>
              <Grid columns={1} stackable>
                <Grid.Row>
                  <Grid columns={3}>
                    <Grid.Column textAlign="center">
                      <Grid.Row>Дата размещения</Grid.Row>
                      <Grid.Row>{adsDate}</Grid.Row>
                      <Divider></Divider>
                      <Image
                        src={picture ? picture : "https://lojasavanna.com.br/Handlers/Imagens/img.aspx?id=83&img=0_FT_1.jpg&tp=jpg&x=750&y=750"}
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
                        <Menu.Item>{description}</Menu.Item>
                        {data ? Object.keys(data).map((items) => (
                          <Menu.Item key={items}>{data[items]}</Menu.Item>
                        )) : "Нет данных"}
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
                        <Menu.Item>{region && region.name}</Menu.Item>
                      </Menu>
                    </Grid.Column>
                  </Grid>
                </Grid.Row>
              </Grid>
            </Segment>
          </React.Fragment>
        )

    }
    )
  )
}

export default AdsItem