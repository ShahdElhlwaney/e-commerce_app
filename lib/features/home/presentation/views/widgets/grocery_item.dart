import 'package:e_commerce/features/home/data/models/grocery.dart';
import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    Key? key,
    required this.grocery,
  }) : super(key: key);
  final Grocery grocery;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248.19,
      padding: const EdgeInsets.only(left: 19),
      decoration: BoxDecoration(
        color: grocery.color,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(grocery.image),
          const SizedBox(width: 15,),
          Text(grocery.name)
        ],
      ),
    );
  }
}
