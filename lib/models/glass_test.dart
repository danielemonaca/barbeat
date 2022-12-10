import 'package:flutter/foundation.dart';

enum GlassTest {
  martiniGlass,
  balloonGlass,
}

extension GlassTestWithExtension on GlassTest {
  String get name => describeEnum(this);

  String get displayName {
    switch (this) {
      case GlassTest.martiniGlass:
        return 'Martini Glass';
      case GlassTest.balloonGlass:
        return 'Balloon Glass';
    }
  }
}
