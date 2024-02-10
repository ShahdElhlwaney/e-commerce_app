

import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/services/api/api_errors.dart';
import 'package:e_commerce/features/home/data/models/change_cart.dart';
import 'package:e_commerce/features/home/data/models/get_cart.dart';

abstract class CartRepo{
  Future<Either<Failure,ChangeCartModel>> changeCarts(int productId);
  Future<Either<Failure,GetCartsModel>> getCarts();


}