import 'dart:convert';

class TodayInsightsModel {
  String id;
  String title;
  String text;
  TodayInsightsModel({
    required this.id,
    required this.title,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'text': text,
    };
  }

  factory TodayInsightsModel.fromMap(Map<String, dynamic> map) {
    return TodayInsightsModel(
      id: map['id'] as String,
      title: map['title'] as String,
      text: map['text'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodayInsightsModel.fromJson(String source) =>
      TodayInsightsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
