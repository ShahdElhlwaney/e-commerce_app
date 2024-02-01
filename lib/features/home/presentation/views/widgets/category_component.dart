

import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/features/home/data/models/category.dart';
import 'package:flutter/material.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent({Key? key, required this.category})
      : super(key: key);
   final Category category;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          color: const Color(0xffEEF7F1),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: AppColors.appColor.withOpacity(0.7)
        )
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(category.image,),
         Text(category.categoryName,
           style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
