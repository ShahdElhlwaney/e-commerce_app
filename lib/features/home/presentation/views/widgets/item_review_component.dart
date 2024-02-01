

import 'package:flutter/material.dart';

class ItemReviewComponent extends StatelessWidget {
  const ItemReviewComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Review',style: Theme.of(context).textTheme.displayMedium!.copyWith(
          color: Colors.black
        ),),
        const Row(
          children: [
            Icon(Icons.star_border,color: Color(0xffF3603F),),
            Icon(Icons.star_border,color: Color(0xffF3603F),),
            Icon(Icons.star_border,color: Color(0xffF3603F),),
            Icon(Icons.star_border,color: Color(0xffF3603F),),
            Icon(Icons.star_border,color: Color(0xffF3603F),),
          ],
        )
      ],
    );
  }
}
