import 'package:flutter/material.dart';

class CurrencyTile extends StatelessWidget {
  final String currencyTitle;
  final String currencyValue;

  const CurrencyTile({
    super.key,
    required this.currencyTitle,
    required this.currencyValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(currencyTitle.toUpperCase()),
              Text('\$$currencyValue'),
            ],
          ),
          const Divider(
            thickness: 1.2,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
