


import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/home_item.dart';
import 'package:flutter/material.dart';

class CategoryItemsView extends StatelessWidget {
  const CategoryItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(
          name: 'Sprite Can',
          image: 'assets/home_pics/favourite.png',
          quantity: '22',
          price: '55'),
      Item(
          name: 'Sprite Can',
          image: 'assets/home_pics/favourite.png',
          quantity: '22',
          price: '55'),
      Item(
          name: 'Sprite Can',
          image: 'assets/home_pics/favourite.png',
          quantity: '22',
          price: '55'),
      Item(
          name: 'Sprite Can',
          image: 'assets/home_pics/favourite.png',
          quantity: '22',
          price: '55'),
      Item(
          name: 'Sprite Can',
          image: 'assets/home_pics/favourite.png',
          quantity: '22',
          price: '55'),
      Item(
          name: 'Sprite Can',
          image: 'assets/home_pics/favourite.png',
          quantity: '22',
          price: '55'),
      Item(
          name: 'Sprite Can',
          image: 'assets/home_pics/favourite.png',
          quantity: '22',
          price: '55')
    ];  
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85),
        child: AppBar(
          title: const Center(child: Text('Beverages')) ,
          elevation: 0,
          leading: const Icon(Icons.arrow_back_ios,size: 18,),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.explore_off_sharp),
            )
          ],

        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount:items.length ,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,

          ),
          itemBuilder: (context,index){
              return HomeItem(item: items[index],);
          }
      ),
    );
  }
}
