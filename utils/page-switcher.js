export default function pageSwitcher(query) {
  switch (query) {
    case 'Автомобили':
      return 'autoform'
      break
    default:
      return 'search'
  }
}