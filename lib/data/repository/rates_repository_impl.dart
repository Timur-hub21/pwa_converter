import 'package:pwa_converter/data/api_service/api_service.dart';
import 'package:pwa_converter/data/models/currency_data.dart';
import 'package:pwa_converter/domain/repository/rates_repository.dart';
import 'package:pwa_converter/utils/constants.dart';

class RatesRepositoryImpl implements RatesRepository {
  final ApiService _apiService;

  RatesRepositoryImpl(
    this._apiService,
  );

  @override
  Future<CurrencyData> getCurrencyData() async {
    try {
      final response = await _apiService.get(Constants.ratesEndpoint);
      final CurrencyData data = CurrencyData.fromJson(response);
      return data;
    } catch (error) {
      throw Exception('Unable to get currency data: $error');
    }
  }
}
