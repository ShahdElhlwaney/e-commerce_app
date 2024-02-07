import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({Key? key}) : super(key: key);

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}
class _PhoneNumberViewState extends State<PhoneNumberView> {
  GlobalKey<FormState> formKey = GlobalKey();

  String phoneNumber = '';
  @override
  Widget build(BuildContext context) {
    final authManager = getAuthManager(context);
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: const Icon(Icons.arrow_back_ios),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_forward_ios),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              authManager.user?.phone=phoneNumber;
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginView()));
            }
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter your mobile number',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Mobile Number',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey),
              ),
              TextFormField(
                  validator: (number) {
                    if (number==null) {
                      return "* required";
                    }
                  },
                  onChanged: (number) {
                    setState(() {
                      phoneNumber = number;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter your number',
                      isDense: true,
                      prefixIcon: Image.asset('assets/app_pics/number_logo.png'),
                      labelStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
