import 'package:e_commerce/core/constants/app_pages.dart';
import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartView extends StatelessWidget {
 /* static MaterialPage page(){
    return const MaterialPage(
      name: AppPages.welcomePath,
        key:ValueKey(AppPages.welcomePath) ,
        child:StartView() );
  }*/
  const StartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/app_pics/app_asset.png',
            fit: BoxFit.cover,
            width: width,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,bottom: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/app_pics/logo_app.png'),
                Text(
                  'Welcome\nto our store',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 40,),
                Button(
                  textButton: 'Get Started',
                  onPressed: () {
                     Provider.of<AuthManager>(context,listen: false).start();
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
