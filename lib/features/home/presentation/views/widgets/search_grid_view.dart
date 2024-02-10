
import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/search_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchGridView extends StatelessWidget {
  const SearchGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeManager>(
        builder: (context,manager,child){
         return Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.only(top: 20, left: 15,
                    right: 20),
                itemCount: manager.searches.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2/2.9,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: (){

                      },
                      child: SearchProduct(product: manager.searches[index],));
                }),
          );
        });
  }
}
