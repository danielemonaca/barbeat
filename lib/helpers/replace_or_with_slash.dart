/*
* We are going to replace the or of an enum with a ' / '.
* Example: MilkOrFloatOrShake -> "Milk / Float / Shake"
*/
String replaceOrWithSlash(String text) {
  return text.replaceAll(RegExp(r'Or'), ' / ');
}
