


import 'package:flutter/material.dart';

void bottomSheet(BuildContext context, String msg, {Color color = Colors.red}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(msg),
    backgroundColor:color,
  ));
}