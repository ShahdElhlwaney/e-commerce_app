


import 'package:flutter/material.dart';

class BasketCountComponent extends StatelessWidget {
  const BasketCountComponent({Key? key,
    required this.numBasketItem}) : super(key: key);
  final int numBasketItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(17)),
        border: Border.all(
          color: Colors.grey
        )
      ),
      child: Text(numBasketItem.toString()),
    );
  }
}
