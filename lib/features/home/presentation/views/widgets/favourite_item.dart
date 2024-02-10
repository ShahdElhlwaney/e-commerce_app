import 'package:e_commerce/features/home/data/models/favourite_data.dart';
import 'package:flutter/material.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({Key? key, required this.product}) : super(key: key);
  final FavouriteProduct product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25),
      height: 150,
      child: Row(
        children: [
          Image.network(
            product.image!,
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(product.name!.substring(0,22), style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(
                height: 5,
              ),
              Text(product.oldPrice.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.grey)),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '\$${product.price}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}
