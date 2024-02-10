

import 'package:flutter/material.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({Key? key, required this.image}) : super(key: key);
   final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(image ,fit: BoxFit.cover,);
  }
}
