


import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/constants/app_pages.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  static MaterialPage page(){
    return const MaterialPage(
        name:AppPages.splashPath,
        key:ValueKey(AppPages.splashPath) ,
        child: SplashView()
    );
  }
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appColor,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset('assets/app_pics/logo_app.png'),
            const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('nectar',style: Theme.of(context).textTheme.bodyLarge,),
                Text(' o n l i n e  g r o c e r i e t',style: Theme.of(context).textTheme.displaySmall)
              ],
            )

          ],
        )
    );
  }
}

