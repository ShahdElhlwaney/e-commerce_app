import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:e_commerce/features/home/presentation/manager/cart_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/checkout_count_component.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.item, required this.removeItem}) : super(key: key);
  final Item item;
  final Function() removeItem;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 363.6,
        height: 160,
        color: Colors.white,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Image.asset(
            item.image,
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
                item.name,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                item.quantity,
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
                    onPressed: () {},
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
                onTap: removeItem,
                child: const Icon(
                  Icons.close,
                  size: 25,
                  color: Colors.grey,
                ),
              ),
              Text(
                '\$${item.price}',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ]));
  }
}
