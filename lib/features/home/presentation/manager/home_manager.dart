import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/services/api/api_errors.dart';
import 'package:e_commerce/features/home/data/models/category.dart';
import 'package:e_commerce/features/home/data/models/home.dart';
import 'package:e_commerce/features/home/data/repos/home_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeManager extends ChangeNotifier {
  final HomeRepo homeRepo;

  HomeManager(this.homeRepo);

  Future<Either<Failure, List<Baner>>> getBanners() async {
    final response = await homeRepo.getHomeData();
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      final List<Baner> banners = response.data!.banners;
      return Right(banners);
    });
  }

  Future<Either<Failure, List<Product>>> getProducts() async {
    final response = await homeRepo.getHomeData();
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      final List<Product> products = response.data!.products;
      return Right(products);
    });
  }
  Future<Either<Failure, List<Product>>> getCategoryDetails({required int id}) async {
    final response=await homeRepo.getCategoriesDetails(id);
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      final List<Product> products = response.data!.products;
      return Right(products);
    });
  }
  Future<Either<Failure, List<CategoryItem>>> getCategories() async {
    final response = await homeRepo.getCategoriesData();
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      final List<CategoryItem> categories = response.data!.categories;
      return Right(categories);
    });
  }
}
HomeManager getHomeManager(BuildContext context, {bool listen = true}) {
  return Provider.of<HomeManager>(context, listen: listen);
}