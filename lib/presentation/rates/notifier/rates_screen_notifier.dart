import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:pwa_converter/data/models/currency_data.dart';
import 'package:pwa_converter/domain/usecase/rates_usecase.dart';
import 'package:pwa_converter/presentation/rates/notifier/rates_screen_state_notifier.dart';

class RatesScreenNotifier extends ValueNotifier<RatesScreenStateNotifier> {
  final RatesUsecase _ratesUsecase;
  Timer? _timer;

  RatesScreenNotifier(
    this._ratesUsecase,
  ) : super(RatesScreenStateNotifier.initialize());

  @override
  void dispose() {
    _timer?.cancel();
    log('Timer disposed');
    super.dispose();
  }

  Future<void> getCurrencyData() async {
    value = value.copyWith(isLoading: true);

    try {
      final CurrencyData currencyData = await _ratesUsecase.getCurrencyData();

      value = value.copyWith(
        currencies: currencyData.currencies,
        isLoading: false,
      );
      _startPeriodicUpdates();
    } catch (error) {
      log('Unable to get currency data: $error');
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> getCurrencyDataWithoutLoading() async {
    try {
      final CurrencyData currencyData = await _ratesUsecase.getCurrencyData();

      value = value.copyWith(
        currencies: currencyData.currencies,
      );

      log(value.currencies.length.toString());
    } catch (error) {
      log('Unable to get currency data: $error');
    }
  }

  void _startPeriodicUpdates() {
    _timer = Timer.periodic(const Duration(seconds: 30), (Timer timer) {
      getCurrencyDataWithoutLoading();
    });
  }
}
