import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pwa_converter/data/models/currency_data.dart';
import 'package:pwa_converter/presentation/converter/notifier/converter_screen_notifier.dart';
import 'package:pwa_converter/presentation/converter/notifier/converter_screen_state_notifier.dart';
import 'package:pwa_converter/presentation/converter/widgets/custom_currency_picker.dart';
import 'package:pwa_converter/presentation/converter/widgets/custom_selector.dart';
import 'package:pwa_converter/presentation/login/login_screen.dart';
import 'package:pwa_converter/service_locator.dart';

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({super.key});

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  final TextEditingController amountController = TextEditingController();
  final ConverterScreenNotifier converterScreenNotifier =
      serviceLocator.get<ConverterScreenNotifier>();

  @override
  void initState() {
    converterScreenNotifier.getCurrencyData();
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
      valueListenable: converterScreenNotifier,
      builder: (
        BuildContext context,
        ConverterScreenStateNotifier value,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.blue,
            title: const Text(
              'Converter',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () => logout(),
                icon: const Icon(
                  Icons.logout,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              top: 24,
              left: 16,
              right: 16,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'From',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  CustomSelector(
                    selectedCurrencyTitle: value.selectedFrom?.symbol,
                    onTap: () {
                      if (value.currencies.isEmpty) {
                        return;
                      } else {
                        showModalBottomSheet(
                          isDismissible: false,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return CustomCurrencyPicker(
                              currencies: value.currencies,
                              onConfirmTap: (Currency selectedCurrency) {
                                converterScreenNotifier.selectFromCurrency(
                                  selectedCurrency,
                                );
                              },
                            );
                          },
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'To',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  CustomSelector(
                    selectedCurrencyTitle: value.selectedTo?.symbol,
                    onTap: () {
                      if (value.currencies.isEmpty) {
                        return;
                      } else {
                        showModalBottomSheet(
                          isDismissible: false,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return CustomCurrencyPicker(
                              currencies: value.currencies,
                              onConfirmTap: (Currency selectedCurrency) {
                                converterScreenNotifier.selectToCurrency(
                                  selectedCurrency,
                                );
                              },
                            );
                          },
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 24),
                  const Divider(thickness: 1.2, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text(
                    'Amout',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {
                        converterScreenNotifier.updateAmount(value);
                      },
                      controller: amountController,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d*\.?\d*'),
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: value.selectedAmount == null
                            ? '0.00'
                            : value.selectedAmount.toString(),
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  if (value.isCalculateButtonVisible) ...[
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () => converterScreenNotifier.calculateResult(),
                      child: SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: Colors.blue,
                          ),
                          child: const Center(
                            child: Text(
                              'Calculate',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  if (value.convertResult != null &&
                      value.resultWithPercent != null) ...[
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.grey.shade300,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '${value.selectedAmount} ${value.selectedFrom?.symbol}',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Icon(
                                Icons.change_circle_outlined,
                                size: 24,
                                color: Colors.grey,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                '${value.convertResult?.toStringAsFixed(2)} ${value.selectedTo?.symbol}',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${value.resultWithPercent?.toStringAsFixed(2)} ${value.selectedTo?.symbol} + 3%',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
