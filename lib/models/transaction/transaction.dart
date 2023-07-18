import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory Transaction({
    required String id,
    required double amount,
    required bool received,
    required DateTime transactionDate,
    required String title,
    required String madeWith,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> data) =>
      _$TransactionFromJson(data);
}
