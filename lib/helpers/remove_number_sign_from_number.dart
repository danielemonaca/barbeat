int removeNumberSignFromNumber(String number) {
  if (number.startsWith('#')) {
    return int.parse(number.substring(1));
  }
  return int.parse(number);
}
