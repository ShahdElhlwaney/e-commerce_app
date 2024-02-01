

import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:e_commerce/features/home/presentation/manager/cart_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: Text( 'My Cart',style: Theme.of(context).textTheme.bodyMedium,),
            )
        ),*/
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 15,),
              Text( 'My Cart',style: Theme.of(context).textTheme.bodyMedium,),
              SizedBox(height: 15,),
             Divider(thickness: .8,),
              Expanded(
                child: Consumer<CartManager>(
                  builder: (context,manager,child){
                    return ListView.separated(

                      itemBuilder: (BuildContext context, int index) {
                        return CartItem(item:manager.items[index],
                          removeItem: () {
                          Provider.of<CartManager>(context,listen: false).deleteItem(index);
                          },);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(height: 1,color: Colors.grey,);
                      },
                      itemCount: manager.items.length,

                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Button(textButton: 'Go to Checkout', onPressed: () {  },),
              const SizedBox(height: 15,)
            ],
          ),
        )
    );
  }
}
