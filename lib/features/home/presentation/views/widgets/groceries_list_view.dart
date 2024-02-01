import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/features/home/data/models/grocery.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/grocery_item.dart';
import 'package:flutter/material.dart';

class GroceriesListView extends StatelessWidget {
  const GroceriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    List<Grocery> groceries=[
      Grocery(name: 'Rice',
          image: 'assets/home_pics/grocery.png',
          color: AppColors.appColor.withOpacity(0.15)),
      Grocery(name: 'Rice',
          image: 'assets/home_pics/grocery.png',
          color: AppColors.appColor.withOpacity(0.15)),
      Grocery(name: 'Rice',
          image: 'assets/home_pics/grocery.png',
          color: AppColors.appColor.withOpacity(0.15)),
      Grocery(name: 'Rice',
          image: 'assets/home_pics/grocery.png',
          color: AppColors.appColor.withOpacity(0.15)),
      Grocery(name: 'Rice',
          image: 'assets/home_pics/grocery.png',
          color: AppColors.appColor.withOpacity(0.15)),
      Grocery(name: 'Rice',
          image: 'assets/home_pics/grocery.png',
          color: AppColors.appColor.withOpacity(0.15)),
    ];
    return SizedBox(
        height: height*.2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return GroceryItem(grocery: groceries[index]);
          },
          separatorBuilder: (context,index){
            return const SizedBox(width: 20,);
          },
          itemCount: groceries.length
      ),
    );
  }
}
