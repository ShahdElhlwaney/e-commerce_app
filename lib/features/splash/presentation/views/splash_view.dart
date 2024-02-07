


import 'dart:async';

import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/constants/app_pages.dart';
import 'package:e_commerce/features/auth/presentation/views/start_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(
      milliseconds: 1000,
    ),(){
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>const StartView()));
    }
    );
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
                Text(' o n l i n e  g r o c e r i e t',
                    style: Theme.of(context).textTheme.displaySmall
                )
              ],
            )

          ],
        )
    );
  }
}

