import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/category_product_item.dart';
import 'package:flutter/material.dart';

class CategoryItemsView extends StatefulWidget {
  const CategoryItemsView(
      {Key? key, required this.id, required this.categoryName})
      : super(key: key);
  final int id;
  final String categoryName;
  @override
  State<CategoryItemsView> createState() => _CategoryItemsViewState();
}

class _CategoryItemsViewState extends State<CategoryItemsView> {
  @override
  Widget build(BuildContext context) {
    final homeManager = getHomeManager(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
                Icons.arrow_back_ios_new), // Replace with your desired icon
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            widget.categoryName,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        body: FutureBuilder(
          future: homeManager.getCategoryDetails(id: widget.id),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              return snapshot.data!.fold((failure) {
                return Text(failure.toString());
              }, (products) {
                return GridView.builder(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 20),
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3 / 3.8,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {},
                          child: CategoryProductItem(product: products[index]));
                    });
              });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
