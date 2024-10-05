import 'package:pwa_converter/data/models/currency_data.dart';

abstract interface class RatesRepository {
  Future<CurrencyData> getCurrencyData();
}
