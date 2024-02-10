import 'package:e_commerce/features/home/data/models/get_cart.dart';
import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/checkout_count_component.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.product}) : super(key: key);
  final CartProduct product;
  @override
  Widget build(BuildContext context) {
    final homeManager = getHomeManager(context);
    return Container(
        width: 363.6,
        height: 160,
        color: Colors.white,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.network(
            product.image!,
            width: 70.43,
            height: 64.69,
          ),
          const SizedBox(
            width: 32,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name!.substring(0, 15),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                product.oldPrice.toString(),
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckoutCountComponent(
                    onPressed: () {
                      homeManager.changeCarts(product.id!);
                    },
                    sign: 'assets/home_pics/min_item.png',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CheckoutCountComponent(
                    onPressed: () {},
                    sign: 'assets/home_pics/add_item.png',
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  homeManager.changeCarts(product.id);
                },
                child: const Icon(
                  Icons.close,
                  size: 25,
                  color: Colors.grey,
                ),
              ),
              Text(
                '\$${product.price}',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ]));
  }
}
