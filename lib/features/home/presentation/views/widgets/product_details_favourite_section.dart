
import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:flutter/material.dart';

class ProductDetailsFavouriteSection extends StatelessWidget {
  const ProductDetailsFavouriteSection({Key? key, required this.productName, required this.productOldPrice, required this.productId}) : super(key: key);
     final String productName;
     final int productOldPrice;
     final int productId;
  @override
  Widget build(BuildContext context) {
    final homeManager=getHomeManager(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productName.substring(0, 22),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 10.5,
            ),
            Text(
              productOldPrice.toString(),
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        TextButton(
          onPressed: () {},
          child: CircleAvatar(
              backgroundColor: homeManager.favourites[productId]!
                  ? AppColors.appColor
                  : Colors.grey,
              radius: 15.0,
              child: const Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 19.0,
              )),
        )
      ],
    );
  }
}
