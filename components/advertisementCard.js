import React, { useState } from 'react';
import { Image } from 'semantic-ui-react';

export default function AdvertisementCard({ img, name, phone, price, seller, date }) {
  const [phoneNumber, setPhoneNumber] = useState(false);

  const showPhone = () => {
    setPhoneNumber(true);
  };

  return (
    <div className="ui segment" style={{ marginTop: '40px' }}>
      <div className="ui centered grid">
        <div className="three column centered row">
          <div className="column">
            <p style={{ textAlign: 'center' }}>
              Дата размещения: <h5>{date}</h5>
            </p>
          </div>
          <div className="column">
            <p style={{ textAlign: 'center' }}>
              Стоимость: <h5>{price}</h5>
            </p>
          </div>
          <div className="column">
            <p style={{ textAlign: 'center' }}>
              Продавец: <h5>{seller}</h5>
            </p>
          </div>
        </div>
      </div>
      <div className="ui grid container">
        <div className="four wide column">
          <Image src={img} height={200} width={250} />
        </div>
        <div className="nine wide column">
          <h1>{name}</h1>
          <p>Кузов: </p>
          <p>Коробка: </p>
          <p>Год выпуска: </p>
        </div>
        <div className="three wide column">
          {phoneNumber ? (
            <h4>{phone}</h4>
          ) : (
            <button onClick={showPhone} className="ui button">
              Показать телефон
            </button>
          )}
        </div>
      </div>
    </div>
  );
}
