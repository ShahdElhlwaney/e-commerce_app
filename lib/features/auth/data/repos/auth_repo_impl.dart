import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/constants/api_info.dart';
import 'package:e_commerce/core/services/api/api.dart';
import 'package:e_commerce/features/auth/data/models/login.dart';
import 'package:e_commerce/features/auth/data/models/register.dart';
import 'package:e_commerce/features/auth/data/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
   ApiService apiService= ApiService(baseUrl);
  @override
  Future<Either<Failure, Login>> login( String endPoint, Map<String,dynamic>body) async {
    final response = await apiService.post(endPoint: endPoint,body: body);
      return response.fold((failure) {
      return Left(failure);
    }, (data) {
      return Right(Login.fromJson(data));
    });
  }

  @override
  Future<Either<Failure, Register>> register(String endPoint,Map<String,dynamic>body)async {
    final response = await apiService.post(endPoint: endPoint,body: body);
    return response.fold((failure) {
      return Left(failure);
    }, (data) {
      return Right(Register.fromJson(data));
    });
  }
}
