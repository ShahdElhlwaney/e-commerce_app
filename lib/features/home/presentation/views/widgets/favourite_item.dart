
import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:flutter/material.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({Key? key, required this.item}) : super(key: key);
   final Item item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25),
      height: 150,
      child: Row(
        children: [
          Image.asset(item.image,width: 100,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item.name,
                style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 5,),
              Text(item.quantity,style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.grey)),

            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '\$${item.price}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(width: 16,),
              const Icon(Icons.arrow_forward_ios,color: Colors.black,),
            ],
          )
        ],
      ),
    );
  }
}
