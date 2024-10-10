// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_currency_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedCurrencyImpl _$$FreezedCurrencyImplFromJson(
        Map<String, dynamic> json) =>
    _$FreezedCurrencyImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      currencySymbol: json['currencySymbol'] as String?,
      type: json['type'] as String,
      rateUsd: json['rateUsd'] as String,
    );

Map<String, dynamic> _$$FreezedCurrencyImplToJson(
        _$FreezedCurrencyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'currencySymbol': instance.currencySymbol,
      'type': instance.type,
      'rateUsd': instance.rateUsd,
    };
