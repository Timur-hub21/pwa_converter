import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_currency_data.freezed.dart';
part 'freezed_currency_data.g.dart';

@freezed
class FreezedCurrencyData with _$FreezedCurrencyData {
  const factory FreezedCurrencyData({
    required List<FreezedCurrency> currencies,
  }) = _FreezedCurrencyData;

  factory FreezedCurrencyData.fromJson(Map<String, dynamic> json) {
    return FreezedCurrencyData(
      currencies: (json['data'] as List<dynamic>?)
              ?.map((item) => FreezedCurrency.fromJson(item))
              .toList() ??
          [],
    );
  }
}

@freezed
class FreezedCurrency with _$FreezedCurrency {
  const factory FreezedCurrency({
    required String id,
    required String symbol,
    String? currencySymbol,
    required String type,
    required String rateUsd,
  }) = _FreezedCurrency;

  factory FreezedCurrency.fromJson(Map<String, dynamic> json) =>
      _$FreezedCurrencyFromJson(json);
}
