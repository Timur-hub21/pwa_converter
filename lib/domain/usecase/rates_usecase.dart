import 'package:pwa_converter/data/models/currency_data.dart';
import 'package:pwa_converter/domain/repository/rates_repository.dart';

abstract interface class RatesUsecase {
  Future<CurrencyData> getCurrencyData();
}

class RatesUsecaseImpl implements RatesUsecase {
  final RatesRepository _ratesRepository;

  RatesUsecaseImpl(this._ratesRepository);

  @override
  Future<CurrencyData> getCurrencyData() async {
    return _ratesRepository.getCurrencyData();
  }
}
