import 'package:flutter/material.dart';
import 'package:pwa_converter/data/models/currency_data.dart';
import 'package:pwa_converter/presentation/login/login_screen.dart';
import 'package:pwa_converter/presentation/rates/notifier/rates_screen_notifier.dart';
import 'package:pwa_converter/presentation/rates/notifier/rates_screen_state_notifier.dart';
import 'package:pwa_converter/presentation/rates/widgets/currency_tile.dart';
import 'package:pwa_converter/service_locator.dart';

class RatesScreen extends StatefulWidget {
  const RatesScreen({super.key});

  @override
  State<RatesScreen> createState() => _RatesScreenState();
}

class _RatesScreenState extends State<RatesScreen> {
  final RatesScreenNotifier ratesScreenNotifier =
      serviceLocator.get<RatesScreenNotifier>();

  @override
  void initState() {
    ratesScreenNotifier.getCurrencyData();
    super.initState();
  }

  void logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ratesScreenNotifier,
      builder: (
        BuildContext context,
        RatesScreenStateNotifier value,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('Rates'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                onPressed: ratesScreenNotifier.getCurrencyDataWithoutLoading,
                icon: const Icon(
                  Icons.change_circle_outlined,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () => logout(),
                icon: const Icon(
                  Icons.logout,
                  color: Colors.black,
                  size: 20,
                ),
              )
            ],
          ),
          body: () {
            switch (value.isLoading) {
              case true:
                return const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      SizedBox(height: 16),
                      Text(
                        'Rates loading...',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                );

              case false:
                switch (value.currencies.isEmpty) {
                  case true:
                    return const Center(
                      child: Text(
                        'List is empty',
                      ),
                    );

                  case false:
                    return ListView.builder(
                      itemCount: value.currencies.length,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final Currency currency = value.currencies[index];

                        return CurrencyTile(
                          currencyTitle: currency.symbol,
                          currencyValue: currency.rateUsd,
                        );
                      },
                    );
                }
            }
          }(),
        );
      },
    );
  }
}
