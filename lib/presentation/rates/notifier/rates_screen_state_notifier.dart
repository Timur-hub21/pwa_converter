import 'package:pwa_converter/data/models/currency_data.dart';

final class RatesScreenStateNotifier {
  final List<Currency> currencies;
  final bool isLoading;

  RatesScreenStateNotifier({
    required this.currencies,
    required this.isLoading,
  });

  factory RatesScreenStateNotifier.initialize() => RatesScreenStateNotifier(
        currencies: [],
        isLoading: false,
      );

  RatesScreenStateNotifier copyWith({
    List<Currency>? currencies,
    bool? isLoading,
  }) {
    return RatesScreenStateNotifier(
      currencies: currencies ?? this.currencies,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
