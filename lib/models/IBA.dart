// ignore_for_file: file_names

import 'package:barbeat/helpers/camel_to_sentence.dart';
import 'package:flutter/foundation.dart';

enum IBA {
  contemporaryClassics,
  unforgettables,
  newEraDrinks;
}

extension IBAExtension on IBA {
  String get name => camelToSentence(describeEnum(this));
}
