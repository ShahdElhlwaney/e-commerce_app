
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:flutter/material.dart';

class EmailFormField extends StatefulWidget {
  const EmailFormField({Key? key}) : super(key: key);

  @override
  State<EmailFormField> createState() => _EmailFormFieldState();
}

class _EmailFormFieldState extends State<EmailFormField> {
  String _email='';

  @override
  Widget build(BuildContext context) {
    final authManager=getAuthManager(context);
    return TextFormField(
      onChanged: (value) {
          _email = value;
          authManager.user?.email=_email??'';
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
