

import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({Key? key}) : super(key: key);

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  String _password='';
  bool _passwordVisible=false;

  @override
  Widget build(BuildContext context) {
    final authManage=getAuthManager(context);
    return TextFormField(
        onChanged: (value) {
          _password = value;
          authManage.user?.password=_password??'';
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
              icon: Icon(
                  _passwordVisible
                  ? Icons.visibility
                  : Icons.visibility_off)),
          hintText: ' Password',
        ),
        style: const TextStyle(color: Colors.black, fontSize: 20));
  }
}
