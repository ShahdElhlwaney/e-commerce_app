

import 'package:e_commerce/features/home/presentation/views/widgets/basket_count_component.dart';
import 'package:flutter/material.dart';

class ProductDetailsPriceSection extends StatelessWidget {
  const ProductDetailsPriceSection({Key? key, required this.productPrice}) : super(key: key);
  final int productPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset('assets/home_pics/min_item.png'),
            const SizedBox(
              width: 20,
            ),
            const BasketCountComponent(numBasketItem: 1),
            const SizedBox(
              width: 20,
            ),
            Image.asset('assets/home_pics/add_item.png')
          ],
        ),
        Text('\$$productPrice')
      ],
    );
  }
}
