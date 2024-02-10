import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/services/api/api_errors.dart';
import 'package:e_commerce/core/utils/auth_token.dart';
import 'package:e_commerce/features/auth/data/models/login.dart';
import 'package:e_commerce/features/auth/data/models/register.dart';
import 'package:e_commerce/features/auth/data/models/user.dart';
import 'package:e_commerce/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthManager extends ChangeNotifier {
  final AuthRepo authRepo;
  String? token;

  User? user;
  AuthManager(this.authRepo);

  final _storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true));

  Future<Either<Failure, Register>> signup() async {
    final response = await authRepo.register('register', {
      'name': user?.name,
      'phone': user?.phone,
      'email': user?.email,
      'password': user?.password,
      'image': user?.image ?? 'assets/app_pics/default_profile.jpg'
    });
    response.fold((l) {}, (response)async {
    await saveToken(response.data!.token!);
    });
    return response;
  }

  Future<Either<Failure, Login>> logIn(
      {required String email, required String pass}) async {
    final response =
        await authRepo.login('login', {'email': email, 'password': pass});
        response.fold((l){}, (response)async{
         await saveToken(response.data!.token);
        });
    return response;
  }
}

AuthManager getAuthManager(BuildContext context, {bool listen = true}) {
  return Provider.of<AuthManager>(context, listen: listen);
}
