import 'package:json_annotation/json_annotation.dart';

part 'json_serializable_currency_data.g.dart';

@JsonSerializable()
class JsonSerializableCurrencyData {
  final List<JsonSerializableCurrency> currencies;

  JsonSerializableCurrencyData({
    required this.currencies,
  });

  // Обрабатываем поле 'data' в JSON
  factory JsonSerializableCurrencyData.fromJson(Map<String, dynamic> json) {
    return JsonSerializableCurrencyData(
      currencies: (json['data'] as List<dynamic>?)
              ?.map((item) => JsonSerializableCurrency.fromJson(item))
              .toList() ??
          [], // Если 'data' null, возвращаем пустой список
    );
  }

  Map<String, dynamic> toJson() => _$JsonSerializableCurrencyDataToJson(this);
}

@JsonSerializable()
class JsonSerializableCurrency {
  final String id;
  final String symbol;
  final String? currencySymbol;
  final String type;
  final String rateUsd;

  JsonSerializableCurrency({
    required this.id,
    required this.symbol,
    this.currencySymbol,
    required this.type,
    required this.rateUsd,
  });

  factory JsonSerializableCurrency.fromJson(Map<String, dynamic> json) =>
      _$JsonSerializableCurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$JsonSerializableCurrencyToJson(this);
}
