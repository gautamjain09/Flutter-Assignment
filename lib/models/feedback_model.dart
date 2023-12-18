// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FeedbackModel {
  final String id;
  final String text;
  final String createdTime;
  FeedbackModel({
    required this.id,
    required this.text,
    required this.createdTime,
  });

  FeedbackModel copyWith({
    String? id,
    String? text,
    String? createdTime,
  }) {
    return FeedbackModel(
      id: id ?? this.id,
      text: text ?? this.text,
      createdTime: createdTime ?? this.createdTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'text': text,
      'createdTime': createdTime,
    };
  }

  factory FeedbackModel.fromMap(Map<String, dynamic> map) {
    return FeedbackModel(
      id: map['id'] as String,
      text: map['text'] as String,
      createdTime: map['createdTime'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FeedbackModel.fromJson(String source) =>
      FeedbackModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'FeedbackModel(id: $id, text: $text, createdTime: $createdTime)';

  @override
  bool operator ==(covariant FeedbackModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.text == text &&
        other.createdTime == createdTime;
  }

  @override
  int get hashCode => id.hashCode ^ text.hashCode ^ createdTime.hashCode;
}
