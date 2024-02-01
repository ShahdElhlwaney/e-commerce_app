


import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HeadLineListViewComponent extends StatelessWidget {
  const HeadLineListViewComponent({Key? key, required this.headLine, required this.onTab}) : super(key: key);
   final String headLine;
   final Function() onTab;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(headLine,style: Theme.of(context).textTheme.bodyMedium,),
        InkWell(
          onTap: onTab,
          child: Text('See all',style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: AppColors.appColor
          ),),
        )
      ],
    );
  }
}
