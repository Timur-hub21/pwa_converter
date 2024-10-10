import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'built_value_currency_data.g.dart';

abstract class BuiltValueCurrencyData
    implements Built<BuiltValueCurrencyData, BuiltValueCurrencyDataBuilder> {
  BuiltList<BuiltValueCurrency> get currencies;

  BuiltValueCurrencyData._();
  factory BuiltValueCurrencyData(
          [void Function(BuiltValueCurrencyDataBuilder) updates]) =
      _$BuiltValueCurrencyData;

  static BuiltValueCurrencyData fromJson(Map<String, dynamic> json) {
    // Извлекаем данные из ключа "data"
    return serializers.deserializeWith(
      BuiltValueCurrencyData.serializer,
      json['data'],
    )!;
  }

  Map<String, dynamic> toJson() {
    return {
      'data': serializers.serializeWith(BuiltValueCurrencyData.serializer, this)
    };
  }

  static Serializer<BuiltValueCurrencyData> get serializer =>
      _$builtValueCurrencyDataSerializer;
}

abstract class BuiltValueCurrency
    implements Built<BuiltValueCurrency, BuiltValueCurrencyBuilder> {
  String get id;
  String get symbol;
  String? get currencySymbol;
  String get type;
  String get rateUsd;

  BuiltValueCurrency._();
  factory BuiltValueCurrency(
          [void Function(BuiltValueCurrencyBuilder) updates]) =
      _$BuiltValueCurrency;

  static BuiltValueCurrency fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BuiltValueCurrency.serializer, json)!;
  }

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(BuiltValueCurrency.serializer, this)
        as Map<String, dynamic>;
  }

  static Serializer<BuiltValueCurrency> get serializer =>
      _$builtValueCurrencySerializer;
}

@SerializersFor([
  BuiltValueCurrencyData,
  BuiltValueCurrency,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
