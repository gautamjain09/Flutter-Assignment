import 'dart:convert';

class PoseQuestionsModel {
  String id;
  List<String> suggestions;
  PoseQuestionsModel({
    required this.id,
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'suggestions': suggestions,
    };
  }

  factory PoseQuestionsModel.fromMap(Map<String, dynamic> map) {
    return PoseQuestionsModel(
      id: map['id'] as String,
      suggestions: List<String>.from((map['suggestions'] as List<dynamic>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory PoseQuestionsModel.fromJson(String source) =>
      PoseQuestionsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
