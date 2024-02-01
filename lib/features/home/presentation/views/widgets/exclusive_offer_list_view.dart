


import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:e_commerce/features/home/presentation/manager/item_details_manager.dart';
import 'package:e_commerce/features/home/presentation/views/item_details_view.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/home_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExclusiveOfferListView extends StatelessWidget {
  const ExclusiveOfferListView({Key? key}) : super(key: key);

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
            return GestureDetector(
              onTap: (){
                Provider.of<ItemDetailsManager>(context,listen: false).displayItemDetails(items[index]);
              },
                child: HomeItem(item: items[index],));
          },
          separatorBuilder: (context,index){
            return const SizedBox(width: 16,);
          },
          itemCount: items.length
      ),
    );
  }
}
