import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            'My Cart',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            thickness: .8,
          ),
          Expanded(
            child: Consumer<HomeManager>(
              builder: (context, manager, child) {
                return ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return CartItem(
                        product: manager.cartProducts[index].product!);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      height: 1,
                      color: Colors.grey,
                    );
                  },
                  itemCount: manager.cartProducts.length,
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Button(
            textButton: 'Go to Checkout',
            onPressed: () {},
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    ));
  }
}
