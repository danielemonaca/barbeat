/*
  Transform #D8D8D8 to 0xFFD8D8D8
*/

int stringColorToHex(String color) {
  if (color.startsWith('#')) {
    return int.parse('0xFF${color.substring(1)}');
  }
  return int.parse('0xFF$color');
}
