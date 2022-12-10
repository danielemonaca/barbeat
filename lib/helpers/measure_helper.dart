import 'package:barbeat/models/measurement_unit.dart';

class MeasureHelper {
  late MeasurementUnit unit;

  MeasureHelper(this.unit);


  /*
    * Given a measure in the oz format (e.g. 1/2 oz), returns the measure in the ml format rounded (e.g. 15 ml)
    * @param measure the measure in the oz format
    * @return the measure in the ml format
    */
  static String convertOzToMl(String measure) {
    if (measure.isEmpty) {
      return '';
    }
    if (measure.contains('oz')) {
      String oz = measure.substring(0, measure.indexOf('oz'));
      if (oz.contains('/')) {
        List<String> parts = oz.split('/');
        int numerator = int.parse(parts[0]);
        int denominator = int.parse(parts[1]);
        return '${(numerator / denominator * 30).round()} ml';
      } else {
        return '${(int.parse(oz) * 30).round()} ml';
      }
    } else {
      return measure;
    }
  }
}
