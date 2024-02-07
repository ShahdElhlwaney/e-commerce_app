import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/home/data/models/home.dart';
import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:e_commerce/features/home/presentation/manager/cart_manager.dart';
import 'package:e_commerce/features/home/presentation/manager/favourite_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image/image.dart' as img;

class ItemDetailsView extends StatefulWidget {
  const ItemDetailsView({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {
  bool _isFavourite = false;

  @override
  Widget build(BuildContext context) {
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
                child:

                Image.network(

                  widget.product.image!
                  ,
                  fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name!.substring(0,24),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(
                        height: 10.5,
                      ),
                      Text(
                        widget.product.oldPrice.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  GestureDetector(
                    /*  onTap: () {
                        setState(() {
                          _isFavourite = !_isFavourite;
                          widget.product.isFavourite =
                              _isFavourite;
                        });

                        if (widget.product.isFavourite!) {
                          Provider.of<FavouriteManager>(context, listen: false)
                              .addFavouriteItem(widget.product);
                        } else {
                          Provider.of<FavouriteManager>(context, listen: false)
                              .deleteFavouriteItem(widget.product);
                        }
                      }*///,
                      child: /*widget.product.isFavourite ?? false?*/
                           const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                         /* : const Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            )*/
            )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/home_pics/min_item.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      const BasketCountComponent(numBasketItem: 1),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/home_pics/add_item.png')
                    ],
                  ),
                  Text('\$${widget.product.price}')
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Divider(
                thickness: .5,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ExpansionTile(
                title: Text(
                  'Product Details',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                textColor: Colors.black,
                collapsedTextColor: AppColors.appColor,
                children: [
                  ListTile(
                    title: Text(widget.product.description??'' ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Divider(
                thickness: .5,
                color: Colors.grey,
              ),
            ),
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
                onPressed: () {
                  /*Provider.of<CartManager>(context, listen: false)
                      .addItem(widget.product);*/
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
