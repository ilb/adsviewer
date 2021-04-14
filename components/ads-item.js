import React from 'react';
import { Segment, Grid, Image, Divider, Menu, Message, Pagination } from 'semantic-ui-react';

const AdsItem = ({ currentAds, router, pagesCount, currentPage, onPaginationItemClick }) => {
  const handleClick = (id) => {
    router.push(`/autoform/${id}`);
  };
  const adsItems = currentAds ? currentAds : null;
  console.log(pagesCount, currentPage);
  const AdsElement = adsItems.map(
    ({ id, price, person, adsDate, title, phone, data, links, category, region }) => {
      const dateTime = new Date(adsDate);
      const adsDateFormat = dateTime.toLocaleDateString('ru', {
        year: 'numeric',
        month: 'long',
        day: 'numeric',
        hour: 'numeric',
        minute: 'numeric'
      });
      const arrData = [];
      for (const item in data) {
        arrData.push(data[item]);
      }
      const dataslice = arrData.slice(4, 8);
      return (
        <Segment key={id} onClick={() => handleClick(id)}>
          <Grid columns={1} stackable>
            <Grid.Row>
              <Grid columns={3}>
                <Grid.Column textAlign="center">
                  <Grid.Row>Дата размещения</Grid.Row>
                  <Grid.Row>{adsDateFormat}</Grid.Row>
                  <Divider></Divider>
                  <Image
                    src={
                      links[0]
                        ? links[0].href
                        : 'https://lojasavanna.com.br/Handlers/Imagens/img.aspx?id=83&img=0_FT_1.jpg&tp=jpg&x=750&y=750'
                    }
                    size="medium"
                    wrapped
                  />
                </Grid.Column>
                <Grid.Column textAlign="center">
                  <Grid.Row>Стоимость</Grid.Row>
                  <Grid.Row>{price ? `${price} Рублей` : 'Цена скрыта'}</Grid.Row>
                  <Divider></Divider>
                  <Menu fluid vertical>
                    <Menu.Item>{title}</Menu.Item>
                    {dataslice
                      ? dataslice.map((items) => <Menu.Item key={items}>{items}</Menu.Item>)
                      : 'Нет данных'}
                  </Menu>
                </Grid.Column>
                <Grid.Column textAlign="center">
                  <Grid.Row>Продавец</Grid.Row>
                  <Grid.Row>{person && person !== 'недоступно' ? person : 'Частное лицо'}</Grid.Row>
                  <Divider></Divider>
                  <Menu fluid vertical>
                    <Menu.Item>Телефон</Menu.Item>
                    <Menu.Item>{phone}</Menu.Item>
                    <Menu.Item>Регион</Menu.Item>
                    <Menu.Item>
                      {typeof region === 'object'
                        ? region.name
                        : typeof region === 'string'
                        ? region
                        : 'Не указан'}
                    </Menu.Item>
                  </Menu>
                </Grid.Column>
              </Grid>
            </Grid.Row>
          </Grid>
        </Segment>
      );
    }
  );

  const pageChange = (data) => {
    onPaginationItemClick(data.activePage);
  };

  return (
    <>
      {(adsItems.length && <>{AdsElement}</>) || (
        <Message visible>По вашему запросу ничего не найдено</Message>
      )}
      {(pagesCount && (
        <Pagination
          onPageChange={(event, data) => pageChange(data)}
          defaultActivePage={1}
          firstItem={null}
          lastItem={null}
          pointing
          secondary
          totalPages={pagesCount}
        />
      )) || <></>}
    </>
  );
};
export default AdsItem;
