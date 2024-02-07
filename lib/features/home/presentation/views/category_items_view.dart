import 'package:dartz/dartz.dart';
import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/services/api/api_errors.dart';
import 'package:e_commerce/features/home/data/models/home.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/home_item.dart';
import 'package:flutter/material.dart';

class CategoryItemsView extends StatelessWidget {
  const CategoryItemsView({Key? key, required this.funCategoryDetails})
      : super(key: key);
  final Future<Either<Failure, List<Product>>> funCategoryDetails;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(85),
          child: AppBar(
            title: const Center(child: Text('Beverages')),
            elevation: 0,
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 18,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(Icons.explore_off_sharp),
              )
            ],
          ),
        ),
        body: FutureBuilder(
          future: funCategoryDetails,
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              return snapshot.data!.fold((failure) {
                return Text(failure.toString());
              }, (categoryProducts) {
                return GridView.builder(
                    padding:
                    const EdgeInsets.only(top: 20, left: 15, right: 20),
                    itemCount: categoryProducts.length,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 2.5,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15),
                    itemBuilder: (context, index) {
                      return HomeItem(
                        key: Key(categoryProducts[index].id.toString()),
                        product: categoryProducts[index],
                      );
                    });
              });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        )
    );
  }
}


