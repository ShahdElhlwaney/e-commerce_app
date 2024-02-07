

import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/features/home/presentation/manager/bottom_nav_bar_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget>homeViews=[const ShopView(),const ExploreView(),const CartView(),const FavouriteView(),const AccountView()];
    return Consumer<BottomNavBarManager>(
      builder: (BuildContext context, manager,child){
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: manager.currentTab,
            selectedItemColor: AppColors.appColor,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.holiday_village_rounded,),label: 'Shop'),
              BottomNavigationBarItem(icon: Icon(Icons.travel_explore),label: 'Explore',),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label:'Cart' ),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Favourite'),
              BottomNavigationBarItem(icon:  Icon(Icons.perm_identity),label: 'Account')
            ],
            onTap: (index){
             manager.goToTab(index);
            },
          ),
         body:IndexedStack(index: manager.currentTab,children: homeViews,)
        );
      },
    );
  }
}

