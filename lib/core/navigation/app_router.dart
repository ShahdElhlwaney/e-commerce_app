
import 'package:e_commerce/core/constants/app_pages.dart';
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:e_commerce/features/auth/presentation/views/views.dart';
import 'package:e_commerce/features/home/presentation/manager/bottom_nav_bar_manager.dart';
import 'package:e_commerce/features/home/presentation/views/item_details_view.dart';
import 'package:e_commerce/features/home/presentation/views/views.dart';
import 'package:e_commerce/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

/*class AppRouter extends RouterDelegate with ChangeNotifier,PopNavigatorRouterDelegateMixin{
  AppRouter(  {required this.itemDetailsManager,required this.bottomNavBarManager,required this.authManager}){
    bottomNavBarManager.addListener(notifyListeners);
    authManager.addListener(notifyListeners);
    itemDetailsManager.addListener(notifyListeners);
  }
  final BottomNavBarManager bottomNavBarManager;
  final AuthManager authManager;
  final ItemDetailsManager itemDetailsManager;
    GlobalKey<NavigatorState>navigateKey=GlobalKey();
    @override
  void dispose() {
      authManager.dispose();
      bottomNavBarManager.dispose();
      itemDetailsManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        const MaterialPage(
            key: ValueKey('/splash'),
            name:'/splash',
            child: SplashView()
        ),
        if(authManager.initialized&&!authManager.isStarted)
          const MaterialPage(
            key:ValueKey('/start') ,
            name:'/start',
            child: StartView()
        ),
        if(authManager.isStarted)
          const MaterialPage(
              key:ValueKey('/signIn') ,
              name:'/signIn',
              child: SignInView()
          ),
       /* if(authManager.toNumber)
          const MaterialPage(
            key:ValueKey('/number') ,
            name:'/number',
            child: PhoneNumberView()
          ),*/

        if(authManager.isSignedIn || authManager.enteredCode)
          const MaterialPage(
              key: ValueKey('/login'),
              name:'/login',
              child: LoginView()
          ),
       /* if(authManager.isConnectedWithNumber)
          const MaterialPage(
            key: ValueKey('/code') ,
            name:'/code',
            child: CodeView()
          )*/
        if(authManager.isLoggedIn)
          MaterialPage(
              key:const ValueKey(AppPages.homePath) ,
              name:AppPages.homePath,
              child: HomeView()
          ),
        if(itemDetailsManager.isTabed)
           MaterialPage(
              key:const ValueKey(AppPages.itemDetailsPath) ,
              name:AppPages.itemDetailsPath,
              child: ItemDetailsView(item: itemDetailsManager.item,)
          ),


      ],
      onPopPage:_handlePop ,
    );
  }

  @override
  Future<void> setNewRoutePath(configuration)async=>await null;
  bool _handlePop(Route<dynamic>route,result)
  {
    if(!route.didPop(result))
      {
        return false;
      }
   if(route.settings.name==AppPages.itemDetailsPath)
      {
         itemDetailsManager.tabOffDetails();
      }
   

     return true;

  }

  @override
  // TODO: implement navigatorKey
  GlobalKey<NavigatorState>? get navigatorKey =>  navigateKey;
}*/