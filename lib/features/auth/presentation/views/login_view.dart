import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:e_commerce/core/theme/bottom_sheet.dart';
import 'package:e_commerce/core/widgets/button.dart';
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:e_commerce/features/auth/presentation/views/signup_view.dart';
import 'package:e_commerce/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible = false;
  String _email='';
  String _password='';
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final _authManager=getAuthManager(context);
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
              'Login',
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
            const SizedBox(height:39,),
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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>const SignUpView())
                  );
                },
                child: Text(
                  ' sign up',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColors.appColor),
                ),
              )
            ]),
            Button(
              textButton: 'Log In',
              onPressed: ()async {
                if (formKey.currentState!.validate()) {
                 final response=await _authManager.logIn(email: _email, pass: _password);
                   response.fold((failure) {
                     print('failure');
                   }, (response) {
                       bottomSheet(context,response.message,color:AppColors.appColor);
                       Navigator.pushReplacement(context, MaterialPageRoute(
                           builder: (context)=>const HomeView()));
                   });
                //  Provider.of<AuthManager>(context,listen: false).logIn();
                }
              },
            )
          ]),
        ),
      ),
    ));
  }

  TextFormField passwordFormField() {
    return TextFormField(
        onChanged: (value) {
          _password= value;
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
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
      validator: (value) {
        if (_email.isEmpty) {
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
