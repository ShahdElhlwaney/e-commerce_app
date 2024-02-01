


import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({required this.textButton,
    required this.onPressed,
    });
  String textButton;
   Function() onPressed;
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 50,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.appColor),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(10) ,
                  topRight:Radius.circular(10) ,
                  bottomRight: Radius.circular(10),
                  bottomLeft:Radius.circular(10) )
            )
          )
        ),
          onPressed: onPressed, child: Text(textButton,
        style: Theme.of(context).textTheme.displayMedium,)),
    );




  }
}