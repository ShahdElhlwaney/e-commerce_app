import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _passwordVisible = false;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Center(
              child: Image.asset(
                'assets/app_pics/colored_logo_app.png',
              ),
            ),
            Text(
              'Loging',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Enter your emails and password',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
            SizedBox(height:39,),
            Text(
              'Email',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 25,
            ),
            emailFormField(),
                const SizedBox(height:28),
                Text(
                  'Password',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey),
                ),
            const SizedBox(
              height: 20,
            ),
            passwordFormField(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Forgot Password?',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: Colors.black),
            ),
            SizedBox(height: 25,),
            Button(
              textButton: 'Log In',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  Provider.of<AuthManager>(context,listen: false).logIn();
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(
                ' Don’t have an account?',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.black),
              ),
              TextButton(
                onPressed: () {
                  Provider.of<AuthManager>(context,listen: false).signUp();
                },
                child: Text(
                  ' sign up',
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

  TextFormField passwordFormField() {
    return TextFormField(
        controller: _passwordController,
        onChanged: (value) {
          _passwordController.text = value;
        },
        validator: (data) {
          if (data!.isEmpty) {
            return "* Required";
          }
        },
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
                icon: Icon(_passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off)),
            hintText: ' Password',
            ),
        style: const TextStyle(color: Colors.black, fontSize: 20));
  }

  TextFormField emailFormField() {
    return TextFormField(
      controller: _emailController,
      onChanged: (value) {
        setState(() {
          _emailController.text = value;
        });
      },
      validator: (value) {
        if (_emailController.text.isEmpty) {
          return "* required";
        }
      },
      decoration: const InputDecoration(
          hintText: 'email',
          ),
      style: const TextStyle(color: Colors.black, fontSize: 20),
    );
  }
}
