import 'package:e_commerce/features/home/presentation/views/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: const EdgeInsets.all(16), children: [
      const SizedBox(
        height: 25,
      ),
      Column(
        children: [
          Image.asset(
            'assets/app_pics/colored_logo_app.png',
            height: 55,
            width: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                size: 25,
              ),
              Text(
                'Dhaka, Banassre',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SearchComponent(
          onChanged: (value) {},
          text: '',
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const BannersListView(),
      const SizedBox(
        height: 50,
      ),
      HeadLineListViewComponent(
        headLine: 'Exclusive Offer',
        onTab: () {},
      ),
      const SizedBox(
        height: 30,
      ),
      const ExclusiveOfferListView(),
      const SizedBox(
        height: 51,
      ),
      HeadLineListViewComponent(
        headLine: 'Best Selling',
        onTab: () {},
      ),
      const SizedBox(
        height: 25,
      ),
      const BestSellingListView(),
      const SizedBox(
        height: 23,
      ),
      HeadLineListViewComponent(
        headLine: 'Groceries',
        onTab: () {},
      ),
      const SizedBox(
        height: 28,
      ),
      const GroceriesListView(),
      const SizedBox(
        height: 12,
      ),
      const SizedBox(
        height: 20,
      ),
      //const BestSellingListView(),
      const SizedBox(
        height: 19,
      )
    ]));
  }
}
