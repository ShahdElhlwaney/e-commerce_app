
import 'package:e_commerce/features/auth/presentation/manager/auth_manager.dart';
import 'package:flutter/material.dart';

class NameFormField extends StatefulWidget {
  const NameFormField({Key? key}) : super(key: key);

  @override
  State<NameFormField> createState() => _NameFormFieldState();
}

class _NameFormFieldState extends State<NameFormField> {
   String _name='';
  @override
  Widget build(BuildContext context) {
    final authManager=getAuthManager(context);
    return TextFormField(
      onChanged: (value) {
        setState(() {
         _name = value;
          authManager.user?.name=_name??'';
        });
      },
      validator: (value) {
        if (_name.isEmpty) {
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
