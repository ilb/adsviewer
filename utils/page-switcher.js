export default function pageSwitcher(query) {
  switch (query) {
    case 'Автомобили':
      return 'transport'
      break
    default:
      return 'default'
  }
}