

import 'package:e_commerce/features/home/data/models/banner_image.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/banner_component.dart';
import 'package:flutter/material.dart';

class BannersListView extends StatelessWidget {
  const BannersListView({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    List<BannerComponent>banners=[
      BannerComponent(bannerImage: BannerImage('assets/home_pics/banner.png')),
      BannerComponent(bannerImage: BannerImage('assets/home_pics/banner.png')),
      BannerComponent(bannerImage: BannerImage('assets/home_pics/banner.png')),
      BannerComponent(bannerImage: BannerImage('assets/home_pics/banner.png')),
      BannerComponent(bannerImage: BannerImage('assets/home_pics/banner.png')),
      BannerComponent(bannerImage: BannerImage('assets/home_pics/banner.png')),
    ];
    return SizedBox(
      height: height*.3,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return banners[index];
          },
          separatorBuilder: (context,index){
            return const SizedBox(width: 20,);
          },
          itemCount: banners.length),
    );
  }
}
