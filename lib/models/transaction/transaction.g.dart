// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as String,
      amount: (json['amount'] as num).toDouble(),
      received: json['received'] as bool,
      transactionDate: DateTime.parse(json['transactionDate'] as String),
      title: json['title'] as String,
      madeWith: json['madeWith'] as String,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'received': instance.received,
      'transactionDate': instance.transactionDate.toIso8601String(),
      'title': instance.title,
      'madeWith': instance.madeWith,
    };
