

import 'package:e_commerce/features/home/data/models/banner_image.dart';
import 'package:flutter/material.dart';

class BannerComponent extends StatelessWidget {
  const BannerComponent({Key? key, required this.bannerImage}) : super(key: key);
   final BannerImage bannerImage;
  @override
  Widget build(BuildContext context) {
    return Image.asset(bannerImage.image,fit: BoxFit.cover,);
  }
}
