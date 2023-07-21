import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense.freezed.dart';
part 'expense.g.dart';

@freezed
class Expense with _$Expense {
  const factory Expense({
    required double price,
    required ExpenseDirection direction,
    required ExpenseType type,
    required String? detail,
    required String? category,
    required DateTime date,
    required String? pictureUrl,
    required String? picturePath,
    required String? id,
  }) = _Expense;

  factory Expense.fromJson(Map<String, dynamic> json) =>
      _$ExpenseFromJson(json);
}

enum ExpenseDirection{
  sent,
  received,
}

enum ExpenseType{
  utility,
  investment,
  loan,
  others
}
