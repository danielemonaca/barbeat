import 'package:barbeat/helpers/camel_to_sentence.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Define the test
  test("test to check camel to sentence case function", () {
    // Asset
    expect(camelToSentence("helloTest"), 'Hello Test');
  });

  test("test to check if it also works with PascalCase", () {
    // Asset
    expect(camelToSentence("HelloTest"), 'Hello Test');
  });

  test("test to check if it crashes when separation is possible", () {
    // Asset
    expect(camelToSentence("hellotest"), 'Hellotest');
  });
}
