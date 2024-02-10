import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/favourite_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeManager>(
      builder: (BuildContext context, manager, child) {
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
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return FavouriteItem(
                      product: manager.products[index].product!,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: manager.products.length),
            ),
            const SizedBox(height: 10),
            Button(
              textButton: 'Add All To Cart',
              onPressed: () {},
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ));
      },
    );
  }
}
