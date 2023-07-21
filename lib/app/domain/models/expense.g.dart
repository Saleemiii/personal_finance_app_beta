// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Expense _$$_ExpenseFromJson(Map<String, dynamic> json) => _$_Expense(
      price: (json['price'] as num).toDouble(),
      direction: $enumDecode(_$ExpenseDirectionEnumMap, json['direction']),
      type: $enumDecode(_$ExpenseTypeEnumMap, json['type']),
      detail: json['detail'] as String?,
      category: json['category'] as String?,
      date: DateTime.parse(json['date'] as String),
      pictureUrl: json['pictureUrl'] as String?,
      picturePath: json['picturePath'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ExpenseToJson(_$_Expense instance) =>
    <String, dynamic>{
      'price': instance.price,
      'direction': _$ExpenseDirectionEnumMap[instance.direction]!,
      'type': _$ExpenseTypeEnumMap[instance.type]!,
      'detail': instance.detail,
      'category': instance.category,
      'date': instance.date.toIso8601String(),
      'pictureUrl': instance.pictureUrl,
      'picturePath': instance.picturePath,
      'id': instance.id,
    };

const _$ExpenseDirectionEnumMap = {
  ExpenseDirection.sent: 'sent',
  ExpenseDirection.received: 'received',
};

const _$ExpenseTypeEnumMap = {
  ExpenseType.utility: 'utility',
  ExpenseType.investment: 'investment',
  ExpenseType.loan: 'loan',
  ExpenseType.others: 'others',
};
