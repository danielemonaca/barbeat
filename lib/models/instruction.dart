import 'package:equatable/equatable.dart';

class Instruction extends Equatable {
  final String? language;
  final String? text;

  const Instruction({this.language, this.text});

  @override
  List<Object?> get props => [language, text];

  factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
        language: json['language'],
        text: json['text'],
      );

  Map<String, dynamic> toJson() => {
        'language': language,
        'text': text,
      };

  Instruction copyWith({
    String? language,
    String? text,
  }) {
    return Instruction(
      language: language ?? this.language,
      text: text ?? this.text,
    );
  }
}
