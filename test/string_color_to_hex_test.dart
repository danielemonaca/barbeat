import 'package:barbeat/helpers/string_color_to_hex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should transform #D8D8D8(String) to 0xFFD8D8D8(int) ', () {
    // Setup
    const color = '#D8D8D8';
    const int expected = 0xFFD8D8D8;

    // Test
    final int result = stringColorToHex(color);

    // Assert
    expect(result, expected);
  });
}
