import 'package:e_commerce/features/home/data/models/category.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/category_component.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/search_component.dart';
import 'package:flutter/material.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Category> categories = [
      Category(
          image: 'assets/home_pics/category.png',
          categoryName: 'Frash Fruits'
              '& Vegetable'),
      Category(
          image: 'assets/home_pics/category.png',
          categoryName: 'Frash Fruits'
              '& Vegetable'),
      Category(
          image: 'assets/home_pics/category.png',
          categoryName: 'Frash Fruits'
              '& Vegetable'),
      Category(
          image: 'assets/home_pics/category.png',
          categoryName: 'Frash Fruits'
              '& Vegetable'),
      Category(
          image: 'assets/home_pics/category.png',
          categoryName: 'Frash Fruits'
              '& Vegetable'),
      Category(
          image: 'assets/home_pics/category.png',
          categoryName: 'Frash Fruits'
              '& Vegetable'),
      Category(
          image: 'assets/home_pics/category.png',
          categoryName: 'Frash Fruits'
              '& Vegetable'),
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15
            ,top: 50),
        child: Column(
          children: [
            Text(
              'Find Products',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            const SearchComponent(),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.only(top: 20, left: 15,
                      right: 20),
                  itemCount: categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return CategoryComponent(category: categories[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
