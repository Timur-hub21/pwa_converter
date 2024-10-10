final class CurrencyData {
  final List<Currency> currencies;

  CurrencyData({required this.currencies});

  factory CurrencyData.fromJson(Map<String, dynamic> json) {
    return CurrencyData(
      currencies: (json['data'] as List)
          .map((item) => Currency.fromJson(item))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': currencies.map((currency) => currency.toJson()).toList(),
    };
  }
}

final class Currency {
  final String id;
  final String symbol;
  final String? currencySymbol;
  final String type;
  final String rateUsd;

  Currency({
    required this.id,
    required this.symbol,
    this.currencySymbol,
    required this.type,
    required this.rateUsd,
  });

  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      id: json['id'],
      symbol: json['symbol'],
      currencySymbol: json['currencySymbol'],
      type: json['type'],
      rateUsd: json['rateUsd'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'symbol': symbol,
      'currencySymbol': currencySymbol,
      'type': type,
      'rateUsd': rateUsd,
    };
  }
}
