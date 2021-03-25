export default function validator(data) {
  if (data.code !== 200) {
    return data.error;
  }
}
