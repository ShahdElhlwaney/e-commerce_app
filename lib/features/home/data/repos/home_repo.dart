

import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/services/api/api.dart';
import 'package:e_commerce/features/home/data/models/category.dart';
import 'package:e_commerce/features/home/data/models/home.dart';

abstract class HomeRepo{
  Future<Either<Failure,Home>> getHomeData();
  Future<Either<Failure,CategoryData>> getCategoriesData();
  Future<Either<Failure,Home>> getCategoriesDetails(int id);


}