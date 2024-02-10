

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/constants/api_info.dart';
import 'package:e_commerce/core/services/api/api_errors.dart';
import 'package:e_commerce/core/services/api/api_service.dart';
import 'package:e_commerce/features/home/data/models/change_cart.dart';
import 'package:e_commerce/features/home/data/models/get_cart.dart';
import 'package:e_commerce/features/home/data/repos/cart_repo.dart';

class CartRepoImpl implements CartRepo{
  final apiService=ApiService(baseUrl);

  @override
  Future<Either<Failure, ChangeCartModel>> changeCarts(int productId)async {
    final response = await apiService.post(
        endPoint: 'favorites',
        body: {'product_id': productId},
        options: Options(headers: {'Authorization':
        'GLASZxKm2P55t2YIAvCf9IcJhzW8XNGYN7K3O2wWnD5bwAiSSjYtjWLja8CVZ99v1BNERF'}));
    return response.fold((failure) {
      return Left(failure);
    }, (success) {
      print(success);
      return  Right(ChangeCartModel.fromJson(success));

    });
  }

  @override
  Future<Either<Failure, GetCartsModel>> getCarts() {
    // TODO: implement getCarts
    throw UnimplementedError();
  }

}