import validator from '../../libs/validators/validator';

it('Sould return error message', async () => {
  const expected = 'Не задан какой-нибудь обязательный параметр.';
  const serverRsponse = {
    code: 400,
    error: 'Не задан какой-нибудь обязательный параметр.'
  };
  const received = validator(serverRsponse);

  expect(received).toBe(expected);
});
