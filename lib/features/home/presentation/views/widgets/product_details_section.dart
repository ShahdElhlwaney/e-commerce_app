

import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({Key? key, required this.productDescription}) : super(key: key);
  final String productDescription;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Product Details',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      textColor: Colors.black,
      collapsedTextColor: AppColors.appColor,
      children: [
        ListTile(
          title: Text(productDescription ),
        ),
      ],
    );
  }
}
