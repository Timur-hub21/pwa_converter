import 'package:pwa_converter/data/models/json_serializable_currency_data.dart';

final class ConverterScreenStateNotifier {
  final List<JsonSerializableCurrency> currencies;
  final JsonSerializableCurrency? selectedFrom;
  final JsonSerializableCurrency? selectedTo;
  final double? selectedAmount;
  final double? convertResult;
  final double? resultWithPercent;
  final bool isCalculateButtonVisible;

  ConverterScreenStateNotifier({
    required this.currencies,
    this.selectedFrom,
    this.selectedTo,
    this.selectedAmount,
    this.convertResult,
    this.resultWithPercent,
    required this.isCalculateButtonVisible,
  });

  factory ConverterScreenStateNotifier.initialize() =>
      ConverterScreenStateNotifier(
        currencies: [],
        selectedFrom: null,
        selectedTo: null,
        selectedAmount: null,
        convertResult: null,
        resultWithPercent: null,
        isCalculateButtonVisible: false,
      );

  ConverterScreenStateNotifier copyWith({
    List<JsonSerializableCurrency>? currencies,
    JsonSerializableCurrency? selectedFrom,
    JsonSerializableCurrency? selectedTo,
    double? selectedAmount,
    double? convertResult,
    double? resultWithPercent,
    bool? isCalculateButtonVisible,
  }) {
    return ConverterScreenStateNotifier(
      currencies: currencies ?? this.currencies,
      selectedFrom: selectedFrom ?? this.selectedFrom,
      selectedTo: selectedTo ?? this.selectedTo,
      selectedAmount: selectedAmount ?? this.selectedAmount,
      convertResult: convertResult ?? this.convertResult,
      resultWithPercent: resultWithPercent ?? this.resultWithPercent,
      isCalculateButtonVisible:
          isCalculateButtonVisible ?? this.isCalculateButtonVisible,
    );
  }
}
