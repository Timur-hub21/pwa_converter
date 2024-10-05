import 'package:flutter/material.dart';

class CustomSelector extends StatelessWidget {
  final VoidCallback onTap;
  final String? selectedCurrencyTitle;

  const CustomSelector({
    super.key,
    this.selectedCurrencyTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              color: Colors.grey,
              width: 1.2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  selectedCurrencyTitle ?? 'Choose currency',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: selectedCurrencyTitle == null
                        ? Colors.grey
                        : Colors.black,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 24,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
