import 'package:e_commerce/features/home/presentation/manager/home_manager.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/banner_component.dart';
import 'package:flutter/material.dart';

class BannersListView extends StatelessWidget {
  const BannersListView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final homeManager = getHomeManager(context);
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
        height: height * .3,
        child: FutureBuilder(
          future: homeManager.getBanners(),
          builder: (BuildContext context, snapshot) {
            if(snapshot.hasData)
              {
                return snapshot.data!.fold((failure) {
                  return Text(failure.toString());
                }, (banners) {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return BannerComponent(image: banners[index].image!);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 20,
                        );
                      },
                      itemCount: banners.length);
                });
              }
            else{
              return const Center(child: CircularProgressIndicator());
            }

          },
        )
    );
  }
}
