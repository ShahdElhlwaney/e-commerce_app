import 'package:e_commerce/features/home/data/models/home.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/add_cart_button.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.network(
              product.image!,
              width: 99,
              height: 79,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            product.name!.substring(0,20),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            product.oldPrice.toString(),
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Colors.grey, decoration: TextDecoration.lineThrough),
          ),
          const Spacer(),
          Row(
            children: [
              Text('\$${product.price}'),
              const SizedBox(
                width: 40,
              ),
              const AddCartButton()
            ],
          )
        ],
      ),
    );
  }
}
