

import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/home_item.dart';
import 'package:flutter/material.dart';

class BestSellingListView extends StatelessWidget {
  const BestSellingListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    List<Item>items=[
      Item(name: 'Organic Bananas', image: 'assets/home_pics/shop.png',
          quantity: '7pcs, Priceg', price: '4.99'),
      Item(name: 'Organic Bananas', image: 'assets/home_pics/shop.png',
          quantity: '7pcs, Priceg', price: '4.99'),
      Item(name: 'Organic Bananas', image: 'assets/home_pics/shop.png',
          quantity: '7pcs, Priceg', price: '4.99'),
      Item(name: 'Organic Bananas', image: 'assets/home_pics/shop.png',
          quantity: '7pcs, Priceg', price: '4.99'),
      Item(name: 'Organic Bananas', image: 'assets/home_pics/shop.png',
          quantity: '7pcs, Priceg', price: '4.99'),
      Item(name: 'Organic Bananas', image: 'assets/home_pics/shop.png',
          quantity: '7pcs, Priceg', price: '4.99'),
      Item(name: 'Organic Bananas', image: 'assets/home_pics/shop.png',
          quantity: '7pcs, Priceg', price: '4.99'),
    ];
    return SizedBox(
        height: height*.28,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return HomeItem(item: items[index],);
          },
          separatorBuilder: (context,index){
            return const SizedBox(width: 16,);
          },
          itemCount: items.length
      ),
    );
  }
}
