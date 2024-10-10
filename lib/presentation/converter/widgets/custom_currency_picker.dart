import 'package:flutter/material.dart';
import 'package:pwa_converter/data/models/json_serializable_currency_data.dart';

class CustomCurrencyPicker extends StatefulWidget {
  final List<JsonSerializableCurrency> currencies;
  final void Function(JsonSerializableCurrency selectedCurrency) onConfirmTap;

  const CustomCurrencyPicker({
    super.key,
    required this.currencies,
    required this.onConfirmTap,
  });

  @override
  State<CustomCurrencyPicker> createState() => _CustomCurrencyPickerState();
}

class _CustomCurrencyPickerState extends State<CustomCurrencyPicker> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 272,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 56,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      widget.onConfirmTap(widget.currencies[selectedIndex]);
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(thickness: 1, color: Colors.grey.shade300),
          Expanded(
            child: ListWheelScrollView.useDelegate(
              itemExtent: 54,
              perspective: 0.003,
              onSelectedItemChanged: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (BuildContext context, int index) {
                  if (index < 0 || index >= widget.currencies.length) {
                    return null;
                  }

                  final JsonSerializableCurrency currency =
                      widget.currencies[index];
                  final bool isSelected = index == selectedIndex;

                  return Center(
                    child: Text(
                      currency.symbol,
                      style: TextStyle(
                        fontSize: isSelected ? 16 : 12,
                        fontWeight:
                            isSelected ? FontWeight.w500 : FontWeight.w400,
                        color: isSelected ? Colors.black : Colors.grey,
                      ),
                    ),
                  );
                },
                childCount: widget.currencies.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
