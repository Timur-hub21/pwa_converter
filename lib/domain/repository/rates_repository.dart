import 'package:pwa_converter/data/models/json_serializable_currency_data.dart';

abstract interface class RatesRepository {
  Future<JsonSerializableCurrencyData> getCurrencyData();
}
