import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/theme/bottom_sheet.dart';
import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/home/data/models/home.dart';
import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    final homeManager = getHomeManager(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F3F2),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * .4,
              width: width,
              decoration: const BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16))),
              alignment: Alignment.center,
              child: Image.network(
                product.image!,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: ProductDetailsFavouriteSection(
                productName: product.name!,
                productOldPrice: product.oldPrice,
                productId: product.id!,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: ProductDetailsPriceSection(
                productPrice: product.price,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const DividerComponent(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ProductDetailsSection(
                productDescription: product.description ?? '',
              ),
            ),
            const DividerComponent(),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: ItemReviewComponent(),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Button(
                textButton: 'Add To Basket',
                onPressed: () async {
                  await addOrRemoveCart(homeManager, context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> addOrRemoveCart(
      HomeManager homeManager, BuildContext context) async {
    {
      final response = await homeManager.changeCarts(product.id!);
      response.fold((l) => null, (response) {
        bottomSheet(context, response, color: AppColors.appColor);
      });
    }
  }
}
