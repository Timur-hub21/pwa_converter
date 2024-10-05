import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pwa_converter/data/models/currency_data.dart';
import 'package:pwa_converter/domain/usecase/rates_usecase.dart';
import 'package:pwa_converter/presentation/converter/notifier/converter_screen_state_notifier.dart';

class ConverterScreenNotifier
    extends ValueNotifier<ConverterScreenStateNotifier> {
  final RatesUsecase _ratesUsecase;

  ConverterScreenNotifier(
    this._ratesUsecase,
  ) : super(ConverterScreenStateNotifier.initialize());

  Future<void> getCurrencyData() async {
    try {
      final CurrencyData currencyData = await _ratesUsecase.getCurrencyData();

      value = value.copyWith(currencies: currencyData.currencies);
    } catch (error) {
      log('Unable to get currency data: $error');
    }
  }

  void selectFromCurrency(Currency selectedCurrency) {
    if (selectedCurrency == value.selectedTo) {
      value = value.copyWith(selectedTo: null);
    }
    value = value.copyWith(selectedFrom: selectedCurrency);
    _updateButtonVisibility();
  }

  void selectToCurrency(Currency selectedCurrency) {
    if (selectedCurrency != value.selectedFrom) {
      value = value.copyWith(selectedTo: selectedCurrency);
    }
    _updateButtonVisibility();
  }

  void updateAmount(String amount) {
    final double? parsedAmount = double.tryParse(amount);
    if (parsedAmount != null) {
      value = value.copyWith(selectedAmount: parsedAmount);
    } else {
      value = value.copyWith(selectedAmount: 0);
    }
    _updateButtonVisibility();
  }

  void _updateButtonVisibility() {
    final isButtonVisible = value.selectedFrom != null &&
        value.selectedTo != null &&
        value.selectedAmount != null &&
        value.selectedAmount! > 0;

    value = value.copyWith(isCalculateButtonVisible: isButtonVisible);
  }

  void calculateResult() {
    if (value.selectedFrom != null &&
        value.selectedTo != null &&
        value.selectedAmount != null) {
      final double? rateFrom = double.tryParse(value.selectedFrom!.rateUsd);
      final double? rateTo = double.tryParse(value.selectedTo!.rateUsd);

      if (rateFrom != null && rateTo != null) {
        final double resultWithoutCommission =
            (value.selectedAmount! * rateFrom) / rateTo;

        final double commission = resultWithoutCommission * 0.03;
        final double resultWithCommission =
            resultWithoutCommission - commission;

        value = value.copyWith(
          convertResult: resultWithoutCommission,
          resultWithPercent: resultWithCommission,
          isCalculateButtonVisible: false,
        );
      } else {
        log('Unable to convert');
      }
    }
  }
}
