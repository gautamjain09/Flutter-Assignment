import 'dart:convert';

class OrderModel {
  final String icon;
  final String text;
  final String orderTime;
  final String transationId;
  final String amount;
  final String orderStatus;
  OrderModel({
    required this.icon,
    required this.text,
    required this.orderTime,
    required this.transationId,
    required this.amount,
    required this.orderStatus,
  });

  OrderModel copyWith({
    String? icon,
    String? text,
    String? orderTime,
    String? transationId,
    String? amount,
    String? orderStatus,
  }) {
    return OrderModel(
      icon: icon ?? this.icon,
      text: text ?? this.text,
      orderTime: orderTime ?? this.orderTime,
      transationId: transationId ?? this.transationId,
      amount: amount ?? this.amount,
      orderStatus: orderStatus ?? this.orderStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icon': icon,
      'text': text,
      'orderTime': orderTime,
      'transationId': transationId,
      'amount': amount,
      'orderStatus': orderStatus,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      icon: map['icon'] as String,
      text: map['text'] as String,
      orderTime: map['orderTime'] as String,
      transationId: map['transationId'] as String,
      amount: map['amount'] as String,
      orderStatus: map['orderStatus'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OrderModel(icon: $icon, text: $text, orderTime: $orderTime, transationId: $transationId, amount: $amount, orderStatus: $orderStatus)';
  }

  @override
  bool operator ==(covariant OrderModel other) {
    if (identical(this, other)) return true;

    return other.icon == icon &&
        other.text == text &&
        other.orderTime == orderTime &&
        other.transationId == transationId &&
        other.amount == amount &&
        other.orderStatus == orderStatus;
  }

  @override
  int get hashCode {
    return icon.hashCode ^
        text.hashCode ^
        orderTime.hashCode ^
        transationId.hashCode ^
        amount.hashCode ^
        orderStatus.hashCode;
  }
}
