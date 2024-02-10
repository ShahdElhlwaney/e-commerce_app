import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/services/api/api_errors.dart';
import 'package:e_commerce/features/home/data/models/models.dart';
import 'package:e_commerce/features/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeManager extends ChangeNotifier {
  final HomeRepo homeRepo;

  HomeManager(this.homeRepo);
  Map<int?, bool?> favourites = {};
  Map<int?, bool?> carts = {};
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
      for (var element in response.data!.products) {
        favourites.addAll({element.id: element.inFavourites});
        carts.addAll({element.id: element.inCart});
      }
      final List<Product> products = response.data!.products;

      return Right(products);
    });
  }

  Future<Either<Failure, List<DataDetails>>> getCategoryDetails(
      {required int id}) async {
    final response = await homeRepo.getCategoriesDetails(id);
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      final products = response.data!.data;
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

  List<DataFavoritesModel> products = [];
  Future<void> changeFavorites(int productId) async {
    final response = await homeRepo.changeFavourites(productId);
    response.fold((failure) {}, (success) async {
      favourites[productId] = !favourites[productId]!;
      await getFavourites();
      notifyListeners();
    });
  }

  Future<Either<Failure, List<DataFavoritesModel>>> getFavourites() async {
    products = [];
    final response = await homeRepo.getFavourites();
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      products.addAll(response.data!.data);
      return Right(response.data!.data);
    });
  }

  Future<Either<Failure, String>> changeCarts(int productId) async {
    final response = await homeRepo.changeCarts(productId);

    return response.fold((failure) {
      return Left(failure);
    }, (success) async {
      await getCarts();
      notifyListeners();
      return Right(success.message!);
    });
  }

  List<CartItems> cartProducts = [];
  Future<Either<Failure, List<CartItems>>> getCarts() async {
    cartProducts = [];
    final response = await homeRepo.getCarts();
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      cartProducts.addAll(response.data!.cartItems);
      return Right(response.data!.cartItems);
    });
  }
  List<DataProduct>searches=[];
  Future<void> search({required String text})async{
    searches=[];
    final response= await homeRepo.search(text);
    response.fold((failure) {},
            (response) {
              print('/////////////////SUCCESS///////////////////////');
              searches.addAll(response.data!.data!);
              notifyListeners();
            }
            );
  }
}

HomeManager getHomeManager(BuildContext context, {bool listen = true}) {
  return Provider.of<HomeManager>(context, listen: listen);
}
