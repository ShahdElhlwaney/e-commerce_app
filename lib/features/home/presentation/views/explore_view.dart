import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/category_component.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/search_component.dart';
import 'package:flutter/material.dart';

import 'category_items_view.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeManager=getHomeManager(context);
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
              child: FutureBuilder(
                future: homeManager.getCategories(),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.hasData) {
                    return snapshot.data!.fold((failure) {
                      return Text(failure.toString());
                    }, (categories) {
                      return GridView.builder(

                          padding: const EdgeInsets.only(top: 20, left: 15,
                              right: 20),
                          itemCount: categories.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2/2.5,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder:(context)=> CategoryItemsView(
                                           funCategoryDetails:
                                           homeManager.getCategoryDetails(id:categories[index].id! ),)));
                              },
                                child: CategoryComponent(category: categories[index]));
                          });
                    });
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
