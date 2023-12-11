import 'dart:convert';

class CosmicForecastModel {
  String choghadiyaStart;
  String choghadiyaEnd;
  String rahukaalStart;
  String rahukaalEnd;
  String luckyColor;
  int luckyNumber;
  CosmicForecastModel({
    required this.choghadiyaStart,
    required this.choghadiyaEnd,
    required this.rahukaalStart,
    required this.rahukaalEnd,
    required this.luckyColor,
    required this.luckyNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'choghadiyaStart': choghadiyaStart,
      'choghadiyaEnd': choghadiyaEnd,
      'rahukaalStart': rahukaalStart,
      'rahukaalEnd': rahukaalEnd,
      'luckyColor': luckyColor,
      'luckyNumber': luckyNumber,
    };
  }

  factory CosmicForecastModel.fromMap(Map<String, dynamic> map) {
    return CosmicForecastModel(
      choghadiyaStart: map['choghadiyaStart'] as String,
      choghadiyaEnd: map['choghadiyaEnd'] as String,
      rahukaalStart: map['rahukaalStart'] as String,
      rahukaalEnd: map['rahukaalEnd'] as String,
      luckyColor: map['luckyColor'] as String,
      luckyNumber: map['luckyNumber'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CosmicForecastModel.fromJson(String source) =>
      CosmicForecastModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
