import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/constants/api_info.dart';
import 'package:e_commerce/core/services/api/api.dart';
import 'package:e_commerce/core/utils/auth_token.dart';
import 'package:e_commerce/features/home/data/models/models.dart';
import 'package:e_commerce/features/home/data/models/search.dart';
import 'package:e_commerce/features/home/data/repos/home_repo.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HomeRepoImpl implements HomeRepo {
  final apiService = ApiService(baseUrl);
  @override
  Future<Either<Failure, Home>> getHomeData() async {
    final response = await apiService.get(endPoint: 'home');
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      return Right(Home.fromJson(response));
    });
  }

  @override
  Future<Either<Failure, Category>> getCategoriesData() async {
    final response = await apiService.get(endPoint: 'categories');
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      return Right(Category.fromJson(response));
    });
  }

  @override
  Future<Either<Failure, CategoryProducts>> getCategoriesDetails(int id) async {
    final response = await apiService.get(endPoint: 'categories/$id');
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      return Right(CategoryProducts.fromJson(response));
    });
  }

  final _storage = const FlutterSecureStorage();

  @override
  Future<Either<Failure, ChangeFavorite>> changeFavourites(
      int productId) async {
    final value = await getToken();
    final response = await apiService.post(
        endPoint: 'favorites',
        body: {'product_id': productId},
        options: Options(headers: {'Authorization': value}));
    return response.fold((failure) {
      return Left(failure);
    }, (success) {
      return Right(ChangeFavorite.fromJson(success));
    });
  }

  @override
  Future<Either<Failure, GetFavoritesModel>> getFavourites() async {
    final value = await getToken();
    final response = await apiService.get(
        endPoint: 'favorites',
        options: Options(headers: {'Authorization': value}));
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      return Right(GetFavoritesModel.fromJson(response));
    });
  }

  @override
  Future<Either<Failure, ChangeCartModel>> changeCarts(int productId) async {
    final value = await getToken();
    final response = await apiService.post(
        endPoint: 'carts',
        body: {'product_id': productId},
        options: Options(headers: {'Authorization': value}));
    return response.fold((failure) {
      return Left(failure);
    }, (success) {
      return Right(ChangeCartModel.fromJson(success));
    });
  }

  @override
  Future<Either<Failure, GetCartsModel>> getCarts() async {
    final value = await getToken();
    _storage.read(key: 'token');
    final response = await apiService.get(
        endPoint: 'carts', options: Options(headers: {'Authorization': value}));
    return response.fold((failure) {
      return Left(failure);
    }, (response) {
      return Right(GetCartsModel.fromJson(response));
    });
  }

  @override
  Future<Either<Failure, Search>> search(String text)async {
    final response=await apiService.post(
        endPoint: 'products/search',
      body: {
          'text':text
      }
    );
    return response.
    fold((failure){
      return Left(failure);
    }, (response){
      return Right(Search.fromJson(response));
    });
  }
}
