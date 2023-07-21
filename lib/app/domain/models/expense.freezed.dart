// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Expense _$ExpenseFromJson(Map<String, dynamic> json) {
  return _Expense.fromJson(json);
}

/// @nodoc
mixin _$Expense {
  double get price => throw _privateConstructorUsedError;
  ExpenseDirection get direction => throw _privateConstructorUsedError;
  ExpenseType get type => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get pictureUrl => throw _privateConstructorUsedError;
  String? get picturePath => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseCopyWith<Expense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res, Expense>;
  @useResult
  $Res call(
      {double price,
      ExpenseDirection direction,
      ExpenseType type,
      String? detail,
      String? category,
      DateTime date,
      String? pictureUrl,
      String? picturePath,
      String? id});
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res, $Val extends Expense>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? direction = null,
    Object? type = null,
    Object? detail = freezed,
    Object? category = freezed,
    Object? date = null,
    Object? pictureUrl = freezed,
    Object? picturePath = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as ExpenseDirection,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      picturePath: freezed == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpenseCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$$_ExpenseCopyWith(
          _$_Expense value, $Res Function(_$_Expense) then) =
      __$$_ExpenseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double price,
      ExpenseDirection direction,
      ExpenseType type,
      String? detail,
      String? category,
      DateTime date,
      String? pictureUrl,
      String? picturePath,
      String? id});
}

/// @nodoc
class __$$_ExpenseCopyWithImpl<$Res>
    extends _$ExpenseCopyWithImpl<$Res, _$_Expense>
    implements _$$_ExpenseCopyWith<$Res> {
  __$$_ExpenseCopyWithImpl(_$_Expense _value, $Res Function(_$_Expense) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? direction = null,
    Object? type = null,
    Object? detail = freezed,
    Object? category = freezed,
    Object? date = null,
    Object? pictureUrl = freezed,
    Object? picturePath = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Expense(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as ExpenseDirection,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExpenseType,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      picturePath: freezed == picturePath
          ? _value.picturePath
          : picturePath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Expense implements _Expense {
  const _$_Expense(
      {required this.price,
      required this.direction,
      required this.type,
      required this.detail,
      required this.category,
      required this.date,
      required this.pictureUrl,
      required this.picturePath,
      required this.id});

  factory _$_Expense.fromJson(Map<String, dynamic> json) =>
      _$$_ExpenseFromJson(json);

  @override
  final double price;
  @override
  final ExpenseDirection direction;
  @override
  final ExpenseType type;
  @override
  final String? detail;
  @override
  final String? category;
  @override
  final DateTime date;
  @override
  final String? pictureUrl;
  @override
  final String? picturePath;
  @override
  final String? id;

  @override
  String toString() {
    return 'Expense(price: $price, direction: $direction, type: $type, detail: $detail, category: $category, date: $date, pictureUrl: $pictureUrl, picturePath: $picturePath, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Expense &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl) &&
            (identical(other.picturePath, picturePath) ||
                other.picturePath == picturePath) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, direction, type, detail,
      category, date, pictureUrl, picturePath, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpenseCopyWith<_$_Expense> get copyWith =>
      __$$_ExpenseCopyWithImpl<_$_Expense>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpenseToJson(
      this,
    );
  }
}

abstract class _Expense implements Expense {
  const factory _Expense(
      {required final double price,
      required final ExpenseDirection direction,
      required final ExpenseType type,
      required final String? detail,
      required final String? category,
      required final DateTime date,
      required final String? pictureUrl,
      required final String? picturePath,
      required final String? id}) = _$_Expense;

  factory _Expense.fromJson(Map<String, dynamic> json) = _$_Expense.fromJson;

  @override
  double get price;
  @override
  ExpenseDirection get direction;
  @override
  ExpenseType get type;
  @override
  String? get detail;
  @override
  String? get category;
  @override
  DateTime get date;
  @override
  String? get pictureUrl;
  @override
  String? get picturePath;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ExpenseCopyWith<_$_Expense> get copyWith =>
      throw _privateConstructorUsedError;
}
