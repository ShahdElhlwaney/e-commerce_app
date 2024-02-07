import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/theme/bottom_sheet.dart';
import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/widgets.dart';
import 'package:e_commerce/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final authManager = getAuthManager(context);
    return Scaffold(
        body: Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Image.asset(
                'assets/app_pics/colored_logo_app.png',
              ),
            ),
            Text(
              'Sign Up',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enter your credentials to continue',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 39,
            ),
            Text(
              'Username',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
            const NameFormField(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Email',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
            const EmailFormField(),
            const SizedBox(height: 28),
            Text(
              'Password',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
            const PasswordFormField(),
            const SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                  text: 'By continuing you agree to our',
                  style: const TextStyle(color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Terms of Service ',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: AppColors.appColor)),
                    const TextSpan(
                      text: 'and',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                        text: ' privacy policy',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: AppColors.appColor))
                  ]),
            ),
            const SizedBox(
              height: 25,
            ),
            Button(
              textButton: 'Sign Up',
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  await signup(authManager, context);
                }
              },
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                ' Already have an account?',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.black),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  ' login',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColors.appColor),
                ),
              )
            ])
          ]),
        ),
      ),
    ));
  }

  Future<void> signup(AuthManager authManager, BuildContext context) async {
         final response = await authManager.signup();
    response.fold((failure) {
      bottomSheet(context, failure.toString(), color: Colors.red);
    }, (response) {
      bottomSheet(context, response.message, color: Colors.green);
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomeView()));
    });
  }
}
