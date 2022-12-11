import 'package:barbeat/helpers/measure_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('convert 1 oz to ml', () {
    expect(MeasureHelper.convertOzToMl('1 oz'), '30 ml');
  });

  test('convert 1/2 oz to ml', () {
    expect(MeasureHelper.convertOzToMl('1/2 oz'), '15 ml');
  });

  test('convert 1/4 oz to ml', () {
    expect(MeasureHelper.convertOzToMl('1/4 oz'), '8 ml');
  });
}
