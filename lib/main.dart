import 'package:e_commerce/core/navigation/app_router.dart';
import 'package:e_commerce/core/theme/app_theme.dart';
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:e_commerce/features/home/presentation/manager/bottom_nav_bar_manager.dart';
import 'package:e_commerce/features/home/presentation/manager/cart_manager.dart';
import 'package:e_commerce/features/home/presentation/manager/favourite_manager.dart';
import 'package:e_commerce/features/home/presentation/manager/item_details_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final AuthManager authManager=AuthManager();
  authManager.initializeApp();
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
  late AppRouter _appRouter;

  @override
  void initState() {
    _appRouter=AppRouter(
      itemDetailsManager: itemDetailsManager,
        bottomNavBarManager: bottomNavBarManager,
        authManager: widget.authManager
    );
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


      ],
      child: MaterialApp(
        theme: theme.light(),
        home: Router(
          routerDelegate: _appRouter,
        )
      ),
    );
  }
}


