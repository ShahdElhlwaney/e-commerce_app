

import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/home_item.dart';
import 'package:flutter/material.dart';

class BestSellingListView extends StatelessWidget {
  const BestSellingListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final homeManager=getHomeManager(context);
    return SizedBox(
        height: height*.28,
      child: FutureBuilder(
        future: homeManager.getProducts(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!.fold((failure) {
              return Text(failure.toString());
            }, (products) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          //Provider.of<ItemDetailsManager>(context,listen: false)
                          // .displayItemDetails(items[index]);
                        },
                        child: HomeProduct(
                          product: products[index],
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 16,
                    );
                  },
                  itemCount: products.length);
            });
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      )
    );

  }
}
