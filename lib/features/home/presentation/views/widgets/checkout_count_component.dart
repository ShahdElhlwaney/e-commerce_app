

import 'package:flutter/material.dart';

class CheckoutCountComponent extends StatelessWidget {
  const CheckoutCountComponent({Key? key, required this.onPressed, required this.sign}) : super(key: key);
 final Function() onPressed;
 final String sign;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45.67,
        height: 45.67,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border:  Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(17),
                topRight: Radius.circular(17),
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17))
        ),
        child:Image.asset(sign,)

    );
  }
}
