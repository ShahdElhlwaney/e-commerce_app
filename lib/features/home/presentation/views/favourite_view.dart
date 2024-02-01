import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:e_commerce/features/home/presentation/manager/cart_manager.dart';
import 'package:e_commerce/features/home/presentation/manager/favourite_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          'Favourite',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          thickness: .8,
        ),
        Expanded(
          child: Consumer<FavouriteManager>(
            builder: (context, manager, child) {
              return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return FavouriteItem(item: manager.favouriteItems[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Divider(
                        height: 1,
                        color: Colors.grey,
                      ));
                },
                itemCount: manager.favouriteItems.length,
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Button(
          textButton: 'Add All To Cart',
          onPressed: () {
            List<Item> li =
                Provider.of<FavouriteManager>(context, listen: false)
                    .favouriteItems;
            li.forEach((item) {
              Provider.of<CartManager>(context, listen: false).addItem(item);
            });
          },
        ),
        const SizedBox(
          height: 15,
        )
      ],
    ));
  }
}
