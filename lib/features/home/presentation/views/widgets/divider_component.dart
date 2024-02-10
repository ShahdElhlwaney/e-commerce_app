
import 'package:flutter/material.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Divider(
        thickness: .5,
        color: Colors.grey,
      ),
    );
  }
}
