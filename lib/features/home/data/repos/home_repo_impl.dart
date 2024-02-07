

import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/constants/api_info.dart';
import 'package:e_commerce/core/services/api/api.dart';
import 'package:e_commerce/core/services/api/api_errors.dart';
import 'package:e_commerce/features/home/data/models/category.dart';
import 'package:e_commerce/features/home/data/models/home.dart';
import 'package:e_commerce/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  final apiService=ApiService(baseUrl);
  @override
  Future<Either<Failure, Home>> getHomeData() async {
    final response=await apiService.get(endPoint: 'home');
   return response.fold(
            (failure) {
              return Left(failure);
            }, (response) {
              return Right(Home.fromJson(response));
    });
  }

  @override
  Future<Either<Failure, CategoryData>> getCategoriesData() async{
    final response=await apiService.get(endPoint: 'categories');
    return response.fold(
            (failure) {
          return Left(failure);
        }, (response) {
      return Right(CategoryData.fromJson(response));
    });
  }

  @override
  Future<Either<Failure, Home>> getCategoriesDetails(int id)async {
    final response=await apiService.get(endPoint: 'categories/$id');
    return response.fold(
            (failure) {
          return Left(failure);
        }, (response) {
      return Right(Home.fromJson(response));
    });
  }


  
}