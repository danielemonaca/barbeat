/*
 * Ignoring the typical structure of enums as
 * they have the correct cases for Rive.
 * 
 * The only requirements to match the Rive input is to add a space
 * from the second word onwards. Example: GreenOlives -> Green Olives
 */

// ignore_for_file: constant_identifier_names
import 'package:barbeat/helpers/camel_to_sentence.dart';
import 'package:flutter/foundation.dart';

enum StateMachineInput {
  Apple,
  Basil,
  Cherry,
  GreenOlives,
  Ice,
  Mint,
  Orange,
  Peel,
  Strawberry,
  Thyme,
}

extension StateMachineInputExtension on StateMachineInput {
  String get name => camelToSentence(describeEnum(this));
}
