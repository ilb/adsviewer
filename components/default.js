import React from 'react'
import { Grid } from 'semantic-ui-react';

const DefaultForm = ({response}) => {

  return (
    <Grid columns={3}  columns='equal' verticalAlign='middle' textAlign='center'>
      <h2>Какие категории описаны?</h2>
      <Grid.Row divided>
        {
          response.data ?
            response.data.map((item) => {
              return (<>
                  <Grid.Column textAlign="right" width={5}>
                    <h3>Категория: </h3>
                  </Grid.Column>
                  <Grid.Column textAlign="right" width={5}>
                    <label>{item}</label>
                  </Grid.Column>
                  <Grid.Column textAlign="left" width={5}>
                    <h4>Реализована</h4>
                  </Grid.Column>
                </>
              )
            }) :
            <div>Ни одной категории не реализовано</div>
        }
          </Grid.Row>
    </Grid>
  )
}
export default DefaultForm