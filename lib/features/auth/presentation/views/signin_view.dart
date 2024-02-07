import 'package:e_commerce/core/constants/app_pages.dart';
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/signin_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);
   static MaterialPage page(){
    return const MaterialPage(
      name: AppPages.signinPath,
        key:ValueKey(AppPages.signinPath) ,
        child:SignInView() );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/app_pics/signin.png'),
            Text(
              'Get your groceries',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'with nectar',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              enabled: false,
                onFieldSubmitted: (number) {},
                decoration:  InputDecoration(
                    hintText: 'Enter your number',
                    isDense: true,
                    prefixIcon: Row(
                      children: [
                        Image.asset('assets/app_pics/number_logo.png'),
                        SizedBox(width: 10,),
                        const Text('+880')
                      ],
                    ),
                    labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black)),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Or connect with social media',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            SignInButton(
              icon: Icons.g_mobiledata_outlined,
              textButton: 'Continue with Google',
              onPressed: () {
              //  Provider.of<AuthManager>(context,listen: false).signIn();
              },
              colorButton: Colors.blue.shade800.withOpacity(.9),
            ),
            const SizedBox(
              height: 20,
            ),
            SignInButton(
                icon: Icons.facebook,
                textButton: 'Continue with Facebook',
                onPressed: () {},
                colorButton: Colors.blue.shade800)
          ],
        ),
      ),
    );
  }
}
