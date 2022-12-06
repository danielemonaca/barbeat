import 'package:barbeat/helpers/replace_or_with_slash.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should replace MilkOrFloatOrShake with Milk / Float / Shake ', () {
    // Setup
    const String input = 'MilkOrFloatOrShake';
    const String expected = 'Milk / Float / Shake';

    // Test
    final String result = replaceOrWithSlash(input);

    // Assert
    expect(result, expected);
  });

  test('should transform MilkOrCoffeorSomething to Milk / CoffeorSomething ',
      () {
    // Setup
    const String input = 'MilkOrCoffeorSomething';
    const String expected = 'Milk / CoffeorSomething';

    // Test
    final String result = replaceOrWithSlash(input);

    // Assert
    expect(result, expected);
  });

  test('should not transform the text if no Or is present ', () {
    // Setup
    const String input = 'Milk';
    const String expected = 'Milk';

    // Test
    final String result = replaceOrWithSlash(input);

    // Assert
    expect(result, expected);
  });

  test('should transform the "MilkOrCoffee" into Milk / Coffee', () {
    // Setup
    const String input = 'MilkOrCoffee';
    const String expected = 'Milk / Coffee';

    // Test
    final String result = replaceOrWithSlash(input);

    // Assert
    expect(result, expected);
  });
}
