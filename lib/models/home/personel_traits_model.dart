import 'dart:convert';

class PersonelTraitsModel {
  String id;
  String title;
  String text;
  PersonelTraitsModel({
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

  factory PersonelTraitsModel.fromMap(Map<String, dynamic> map) {
    return PersonelTraitsModel(
      id: map['id'] as String,
      title: map['title'] as String,
      text: map['text'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonelTraitsModel.fromJson(String source) =>
      PersonelTraitsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
