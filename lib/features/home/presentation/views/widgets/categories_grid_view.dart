import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/category_items_view.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/category_component.dart';
import 'package:flutter/material.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeManager = getHomeManager(context);
    return Expanded(
      child: FutureBuilder(
        future: homeManager.getCategories(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!.fold((failure) {
              return Text(failure.toString());
            }, (categories) {
              return GridView.builder(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 20),
                  itemCount: categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 2.5,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CategoryItemsView(
                                    id: categories[index].id!,
                                    categoryName: categories[index].name!,
                                  )));
                        },
                        child: CategoryComponent(category: categories[index]));
                  });
            });
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
