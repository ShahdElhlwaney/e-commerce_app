

import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/services/api/api_errors.dart';
import 'package:e_commerce/features/auth/data/models/login.dart';
import 'package:e_commerce/features/auth/data/models/register.dart';

abstract class AuthRepo{
  Future<Either<Failure,Register>> register(String endPoint,Map<String,dynamic>body);
  Future<Either<Failure,Login>> login(String endPoint,Map<String,dynamic>body);

}