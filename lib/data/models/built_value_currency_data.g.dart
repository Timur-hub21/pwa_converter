// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_value_currency_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(BuiltValueCurrency.serializer)
      ..add(BuiltValueCurrencyData.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(BuiltValueCurrency)]),
          () => new ListBuilder<BuiltValueCurrency>()))
    .build();
Serializer<BuiltValueCurrencyData> _$builtValueCurrencyDataSerializer =
    new _$BuiltValueCurrencyDataSerializer();
Serializer<BuiltValueCurrency> _$builtValueCurrencySerializer =
    new _$BuiltValueCurrencySerializer();

class _$BuiltValueCurrencyDataSerializer
    implements StructuredSerializer<BuiltValueCurrencyData> {
  @override
  final Iterable<Type> types = const [
    BuiltValueCurrencyData,
    _$BuiltValueCurrencyData
  ];
  @override
  final String wireName = 'BuiltValueCurrencyData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BuiltValueCurrencyData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'currencies',
      serializers.serialize(object.currencies,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltValueCurrency)])),
    ];

    return result;
  }

  @override
  BuiltValueCurrencyData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltValueCurrencyDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'currencies':
          result.currencies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltValueCurrency)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltValueCurrencySerializer
    implements StructuredSerializer<BuiltValueCurrency> {
  @override
  final Iterable<Type> types = const [BuiltValueCurrency, _$BuiltValueCurrency];
  @override
  final String wireName = 'BuiltValueCurrency';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BuiltValueCurrency object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'rateUsd',
      serializers.serialize(object.rateUsd,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currencySymbol;
    if (value != null) {
      result
        ..add('currencySymbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BuiltValueCurrency deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltValueCurrencyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currencySymbol':
          result.currencySymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rateUsd':
          result.rateUsd = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltValueCurrencyData extends BuiltValueCurrencyData {
  @override
  final BuiltList<BuiltValueCurrency> currencies;

  factory _$BuiltValueCurrencyData(
          [void Function(BuiltValueCurrencyDataBuilder)? updates]) =>
      (new BuiltValueCurrencyDataBuilder()..update(updates))._build();

  _$BuiltValueCurrencyData._({required this.currencies}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currencies, r'BuiltValueCurrencyData', 'currencies');
  }

  @override
  BuiltValueCurrencyData rebuild(
          void Function(BuiltValueCurrencyDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltValueCurrencyDataBuilder toBuilder() =>
      new BuiltValueCurrencyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltValueCurrencyData && currencies == other.currencies;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currencies.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuiltValueCurrencyData')
          ..add('currencies', currencies))
        .toString();
  }
}

class BuiltValueCurrencyDataBuilder
    implements Builder<BuiltValueCurrencyData, BuiltValueCurrencyDataBuilder> {
  _$BuiltValueCurrencyData? _$v;

  ListBuilder<BuiltValueCurrency>? _currencies;
  ListBuilder<BuiltValueCurrency> get currencies =>
      _$this._currencies ??= new ListBuilder<BuiltValueCurrency>();
  set currencies(ListBuilder<BuiltValueCurrency>? currencies) =>
      _$this._currencies = currencies;

  BuiltValueCurrencyDataBuilder();

  BuiltValueCurrencyDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencies = $v.currencies.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltValueCurrencyData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltValueCurrencyData;
  }

  @override
  void update(void Function(BuiltValueCurrencyDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuiltValueCurrencyData build() => _build();

  _$BuiltValueCurrencyData _build() {
    _$BuiltValueCurrencyData _$result;
    try {
      _$result =
          _$v ?? new _$BuiltValueCurrencyData._(currencies: currencies.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currencies';
        currencies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BuiltValueCurrencyData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BuiltValueCurrency extends BuiltValueCurrency {
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

  factory _$BuiltValueCurrency(
          [void Function(BuiltValueCurrencyBuilder)? updates]) =>
      (new BuiltValueCurrencyBuilder()..update(updates))._build();

  _$BuiltValueCurrency._(
      {required this.id,
      required this.symbol,
      this.currencySymbol,
      required this.type,
      required this.rateUsd})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'BuiltValueCurrency', 'id');
    BuiltValueNullFieldError.checkNotNull(
        symbol, r'BuiltValueCurrency', 'symbol');
    BuiltValueNullFieldError.checkNotNull(type, r'BuiltValueCurrency', 'type');
    BuiltValueNullFieldError.checkNotNull(
        rateUsd, r'BuiltValueCurrency', 'rateUsd');
  }

  @override
  BuiltValueCurrency rebuild(
          void Function(BuiltValueCurrencyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltValueCurrencyBuilder toBuilder() =>
      new BuiltValueCurrencyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltValueCurrency &&
        id == other.id &&
        symbol == other.symbol &&
        currencySymbol == other.currencySymbol &&
        type == other.type &&
        rateUsd == other.rateUsd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, currencySymbol.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, rateUsd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BuiltValueCurrency')
          ..add('id', id)
          ..add('symbol', symbol)
          ..add('currencySymbol', currencySymbol)
          ..add('type', type)
          ..add('rateUsd', rateUsd))
        .toString();
  }
}

class BuiltValueCurrencyBuilder
    implements Builder<BuiltValueCurrency, BuiltValueCurrencyBuilder> {
  _$BuiltValueCurrency? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  String? _currencySymbol;
  String? get currencySymbol => _$this._currencySymbol;
  set currencySymbol(String? currencySymbol) =>
      _$this._currencySymbol = currencySymbol;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _rateUsd;
  String? get rateUsd => _$this._rateUsd;
  set rateUsd(String? rateUsd) => _$this._rateUsd = rateUsd;

  BuiltValueCurrencyBuilder();

  BuiltValueCurrencyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _symbol = $v.symbol;
      _currencySymbol = $v.currencySymbol;
      _type = $v.type;
      _rateUsd = $v.rateUsd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltValueCurrency other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltValueCurrency;
  }

  @override
  void update(void Function(BuiltValueCurrencyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BuiltValueCurrency build() => _build();

  _$BuiltValueCurrency _build() {
    final _$result = _$v ??
        new _$BuiltValueCurrency._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'BuiltValueCurrency', 'id'),
            symbol: BuiltValueNullFieldError.checkNotNull(
                symbol, r'BuiltValueCurrency', 'symbol'),
            currencySymbol: currencySymbol,
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'BuiltValueCurrency', 'type'),
            rateUsd: BuiltValueNullFieldError.checkNotNull(
                rateUsd, r'BuiltValueCurrency', 'rateUsd'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
