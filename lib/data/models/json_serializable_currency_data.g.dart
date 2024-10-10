// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_serializable_currency_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonSerializableCurrencyData _$JsonSerializableCurrencyDataFromJson(
        Map<String, dynamic> json) =>
    JsonSerializableCurrencyData(
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) =>
              JsonSerializableCurrency.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JsonSerializableCurrencyDataToJson(
        JsonSerializableCurrencyData instance) =>
    <String, dynamic>{
      'currencies': instance.currencies,
    };

JsonSerializableCurrency _$JsonSerializableCurrencyFromJson(
        Map<String, dynamic> json) =>
    JsonSerializableCurrency(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      currencySymbol: json['currencySymbol'] as String?,
      type: json['type'] as String,
      rateUsd: json['rateUsd'] as String,
    );

Map<String, dynamic> _$JsonSerializableCurrencyToJson(
        JsonSerializableCurrency instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'currencySymbol': instance.currencySymbol,
      'type': instance.type,
      'rateUsd': instance.rateUsd,
    };
