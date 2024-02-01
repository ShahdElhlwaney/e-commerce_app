

import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/widgets/button.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState>formKey=GlobalKey();
  final _nameController=TextEditingController();
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  bool _passwordVisible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    const SizedBox(height:39,),
                    Text(
                      'Username',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    ),

                    nameFormField(),
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
                    emailFormField(),
                    const SizedBox(height:28),
                    Text(
                      'Password',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey),
                    ),

                    passwordFormField(),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text:  TextSpan(
                          text: 'By continuing you agree to our',
                          style: const TextStyle(color: Colors.grey),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Terms of Service ',
                              style:Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: AppColors.appColor
                              )
                            ),
                            const TextSpan(
                              text: 'and',
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextSpan(
                              text: ' privacy policy',
                              style:Theme.of(context).textTheme.displaySmall!.copyWith(
                                color: AppColors.appColor
                              )

                            )
                          ]),
                    ),
                    SizedBox(height: 25,),
                    Button(
                      textButton: 'Sign Up',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {

                        }
                      },
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ' Already have an account?',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {

                            },
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
  TextFormField nameFormField() {
    return TextFormField(
      controller: _nameController,
      onChanged: (value) {
        setState(() {
          _nameController.text = value;
        });
      },
      validator: (value) {
        if (_nameController.text.isEmpty) {
          return "* required";
        }
      },
      decoration: const InputDecoration(
        hintText: 'name',
      ),
      style: const TextStyle(color: Colors.black, fontSize: 20),
    );
  }
}
