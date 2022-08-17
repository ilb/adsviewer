import quantile from 'compute-quantile';
test('quantile unsorted', () => {
  const unsorted = [4, 3, 5, 1, 2];

  const q = quantile(unsorted, 0.25);
  expect(q).toBe(2);
});

test('quantile sorted', () => {
  const sorted = [1, 2, 3, 4, 5];

  const q = quantile(sorted, 0.25, { sorted: true });
  expect(q).toBe(2);
});
