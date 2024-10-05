import 'package:get_it/get_it.dart';
import 'package:pwa_converter/data/api_service/api_service.dart';
import 'package:pwa_converter/data/repository/rates_repository_impl.dart';
import 'package:pwa_converter/domain/repository/rates_repository.dart';
import 'package:pwa_converter/domain/usecase/rates_usecase.dart';
import 'package:pwa_converter/presentation/converter/notifier/converter_screen_notifier.dart';
import 'package:pwa_converter/presentation/rates/notifier/rates_screen_notifier.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initServiceLocator() async {
  _registerApiService();
  _registerRepositories();
  _registerUsecases();
  _registerNotifiers();
}

void _registerApiService() {
  serviceLocator.registerLazySingleton<ApiService>(
    () => const ApiService(),
  );
}

void _registerRepositories() {
  serviceLocator.registerSingleton<RatesRepository>(
    RatesRepositoryImpl(
      serviceLocator.get(),
    ),
  );
}

void _registerUsecases() {
  serviceLocator.registerSingleton<RatesUsecase>(
    RatesUsecaseImpl(
      serviceLocator.get(),
    ),
  );
}

void _registerNotifiers() {
  serviceLocator
    ..registerSingleton<RatesScreenNotifier>(
      RatesScreenNotifier(
        serviceLocator.get(),
      ),
    )
    ..registerSingleton<ConverterScreenNotifier>(ConverterScreenNotifier(
      serviceLocator.get(),
    ));
}
