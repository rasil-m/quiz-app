import 'dart:convert';

List<QuizModel> QuestionsFromJson(String str) =>
    List<QuizModel>.from(json.decode(str).map((x) => QuizModel.fromJson(x)));
String QuestionToJson(List<QuizModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QuizModel {
  late String id;
  late String question;
  late List<Option> options;
  late DateTime createdAt;
  late DateTime updatedAt;
  late int v;

  QuizModel({
    required this.id,
    required this.question,
    required this.options,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
      id: json['id']?.toString() ?? '',
      question: json['question']?.toString() ?? '',
      options: List<Option>.from(
        (json['options'] as List<dynamic>? ?? [])
            .map((opt) => Option.fromJson(opt)),
      ),
      createdAt: DateTime.parse(json['createdAt']?.toString() ?? ''),
      updatedAt: DateTime.parse(json['updatedAt']?.toString() ?? ''),
      v: json['v'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'question': question,
      'options': options.map((opt) => opt.toJson()).toList(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'v': v,
    };
  }
}

class Option {
  late String text;
  late bool isCorrect;
  late String id;

  Option({
    required this.text,
    required this.isCorrect,
    required this.id,
  });

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      text: json['text']?.toString() ?? '',
      isCorrect: json['isCorrect'] ?? false,
      id: json['id']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'isCorrect': isCorrect,
      'id': id,
    };
  }
}
