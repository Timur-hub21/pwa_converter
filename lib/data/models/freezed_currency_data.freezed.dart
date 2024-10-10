// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_currency_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FreezedCurrencyData {
  List<FreezedCurrency> get currencies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FreezedCurrencyDataCopyWith<FreezedCurrencyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedCurrencyDataCopyWith<$Res> {
  factory $FreezedCurrencyDataCopyWith(
          FreezedCurrencyData value, $Res Function(FreezedCurrencyData) then) =
      _$FreezedCurrencyDataCopyWithImpl<$Res, FreezedCurrencyData>;
  @useResult
  $Res call({List<FreezedCurrency> currencies});
}

/// @nodoc
class _$FreezedCurrencyDataCopyWithImpl<$Res, $Val extends FreezedCurrencyData>
    implements $FreezedCurrencyDataCopyWith<$Res> {
  _$FreezedCurrencyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_value.copyWith(
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<FreezedCurrency>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedCurrencyDataImplCopyWith<$Res>
    implements $FreezedCurrencyDataCopyWith<$Res> {
  factory _$$FreezedCurrencyDataImplCopyWith(_$FreezedCurrencyDataImpl value,
          $Res Function(_$FreezedCurrencyDataImpl) then) =
      __$$FreezedCurrencyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FreezedCurrency> currencies});
}

/// @nodoc
class __$$FreezedCurrencyDataImplCopyWithImpl<$Res>
    extends _$FreezedCurrencyDataCopyWithImpl<$Res, _$FreezedCurrencyDataImpl>
    implements _$$FreezedCurrencyDataImplCopyWith<$Res> {
  __$$FreezedCurrencyDataImplCopyWithImpl(_$FreezedCurrencyDataImpl _value,
      $Res Function(_$FreezedCurrencyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_$FreezedCurrencyDataImpl(
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<FreezedCurrency>,
    ));
  }
}

/// @nodoc

class _$FreezedCurrencyDataImpl implements _FreezedCurrencyData {
  const _$FreezedCurrencyDataImpl(
      {required final List<FreezedCurrency> currencies})
      : _currencies = currencies;

  final List<FreezedCurrency> _currencies;
  @override
  List<FreezedCurrency> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  String toString() {
    return 'FreezedCurrencyData(currencies: $currencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedCurrencyDataImpl &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedCurrencyDataImplCopyWith<_$FreezedCurrencyDataImpl> get copyWith =>
      __$$FreezedCurrencyDataImplCopyWithImpl<_$FreezedCurrencyDataImpl>(
          this, _$identity);
}

abstract class _FreezedCurrencyData implements FreezedCurrencyData {
  const factory _FreezedCurrencyData(
          {required final List<FreezedCurrency> currencies}) =
      _$FreezedCurrencyDataImpl;

  @override
  List<FreezedCurrency> get currencies;
  @override
  @JsonKey(ignore: true)
  _$$FreezedCurrencyDataImplCopyWith<_$FreezedCurrencyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FreezedCurrency _$FreezedCurrencyFromJson(Map<String, dynamic> json) {
  return _FreezedCurrency.fromJson(json);
}

/// @nodoc
mixin _$FreezedCurrency {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String? get currencySymbol => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get rateUsd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreezedCurrencyCopyWith<FreezedCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedCurrencyCopyWith<$Res> {
  factory $FreezedCurrencyCopyWith(
          FreezedCurrency value, $Res Function(FreezedCurrency) then) =
      _$FreezedCurrencyCopyWithImpl<$Res, FreezedCurrency>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String? currencySymbol,
      String type,
      String rateUsd});
}

/// @nodoc
class _$FreezedCurrencyCopyWithImpl<$Res, $Val extends FreezedCurrency>
    implements $FreezedCurrencyCopyWith<$Res> {
  _$FreezedCurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? currencySymbol = freezed,
    Object? type = null,
    Object? rateUsd = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rateUsd: null == rateUsd
          ? _value.rateUsd
          : rateUsd // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreezedCurrencyImplCopyWith<$Res>
    implements $FreezedCurrencyCopyWith<$Res> {
  factory _$$FreezedCurrencyImplCopyWith(_$FreezedCurrencyImpl value,
          $Res Function(_$FreezedCurrencyImpl) then) =
      __$$FreezedCurrencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String? currencySymbol,
      String type,
      String rateUsd});
}

/// @nodoc
class __$$FreezedCurrencyImplCopyWithImpl<$Res>
    extends _$FreezedCurrencyCopyWithImpl<$Res, _$FreezedCurrencyImpl>
    implements _$$FreezedCurrencyImplCopyWith<$Res> {
  __$$FreezedCurrencyImplCopyWithImpl(
      _$FreezedCurrencyImpl _value, $Res Function(_$FreezedCurrencyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? currencySymbol = freezed,
    Object? type = null,
    Object? rateUsd = null,
  }) {
    return _then(_$FreezedCurrencyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rateUsd: null == rateUsd
          ? _value.rateUsd
          : rateUsd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreezedCurrencyImpl implements _FreezedCurrency {
  const _$FreezedCurrencyImpl(
      {required this.id,
      required this.symbol,
      this.currencySymbol,
      required this.type,
      required this.rateUsd});

  factory _$FreezedCurrencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreezedCurrencyImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String? currencySymbol;
  @override
  final String type;
  @override
  final String rateUsd;

  @override
  String toString() {
    return 'FreezedCurrency(id: $id, symbol: $symbol, currencySymbol: $currencySymbol, type: $type, rateUsd: $rateUsd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreezedCurrencyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rateUsd, rateUsd) || other.rateUsd == rateUsd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, symbol, currencySymbol, type, rateUsd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreezedCurrencyImplCopyWith<_$FreezedCurrencyImpl> get copyWith =>
      __$$FreezedCurrencyImplCopyWithImpl<_$FreezedCurrencyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreezedCurrencyImplToJson(
      this,
    );
  }
}

abstract class _FreezedCurrency implements FreezedCurrency {
  const factory _FreezedCurrency(
      {required final String id,
      required final String symbol,
      final String? currencySymbol,
      required final String type,
      required final String rateUsd}) = _$FreezedCurrencyImpl;

  factory _FreezedCurrency.fromJson(Map<String, dynamic> json) =
      _$FreezedCurrencyImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String? get currencySymbol;
  @override
  String get type;
  @override
  String get rateUsd;
  @override
  @JsonKey(ignore: true)
  _$$FreezedCurrencyImplCopyWith<_$FreezedCurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
