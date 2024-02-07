import 'package:e_commerce/core/navigation/app_router.dart';
import 'package:e_commerce/core/theme/app_theme.dart';
import 'package:e_commerce/features/auth/data/repos/auth_repo_impl.dart';
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:e_commerce/features/auth/presentation/views/views.dart';
import 'package:e_commerce/features/home/data/repos/home_repo.dart';
import 'package:e_commerce/features/home/data/repos/home_repo_impl.dart';
import 'package:e_commerce/features/home/presentation/manager/bottom_nav_bar_manager.dart';
import 'package:e_commerce/features/home/presentation/manager/cart_manager.dart';
import 'package:e_commerce/features/home/presentation/manager/favourite_manager.dart';
import 'package:e_commerce/features/home/presentation/manager/item_details_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/auth/data/repos/auth_repo.dart';
import 'features/home/presentation/manager/home_manager.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
   final AuthRepo authRepoImpl=AuthRepoImpl();
  final AuthManager authManager=AuthManager( authRepoImpl);
  runApp(  ECommerceApp(authManager: authManager,));
}

class ECommerceApp extends StatefulWidget {
  const ECommerceApp({super.key, required this.authManager,});
 final AuthManager authManager;

  @override
  State<ECommerceApp> createState() => _ECommerceAppState();

}

class _ECommerceAppState extends State<ECommerceApp> {
  late  BottomNavBarManager bottomNavBarManager=BottomNavBarManager();
  late ItemDetailsManager itemDetailsManager=ItemDetailsManager();
 // late AppRouter _appRouter;

  @override
  void initState() {
   /* _appRouter=AppRouter(
      itemDetailsManager: itemDetailsManager,
        bottomNavBarManager: bottomNavBarManager,
        authManager: widget.authManager
    );*/
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final theme=AppTheme();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>widget.authManager),
        ChangeNotifierProvider(create: (context)=>bottomNavBarManager),
        ChangeNotifierProvider(create: (context)=>itemDetailsManager),
        ChangeNotifierProvider(create: (create)=>CartManager()),
        ChangeNotifierProvider(create: (create)=>FavouriteManager()),
        ChangeNotifierProvider(create: (create)=>HomeManager(HomeRepoImpl())),



      ],
      child: MaterialApp(
        theme: theme.light(),
        home: const LoginView()
     /*   Router(
          routerDelegate: _appRouter,
        )*/
      ),
    );
  }
}


