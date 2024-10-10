import 'package:pwa_converter/data/models/json_serializable_currency_data.dart';
import 'package:pwa_converter/domain/repository/rates_repository.dart';

abstract interface class RatesUsecase {
  Future<JsonSerializableCurrencyData> getCurrencyData();
}

class RatesUsecaseImpl implements RatesUsecase {
  final RatesRepository _ratesRepository;

  RatesUsecaseImpl(this._ratesRepository);

  @override
  Future<JsonSerializableCurrencyData> getCurrencyData() async {
    return _ratesRepository.getCurrencyData();
  }
}
