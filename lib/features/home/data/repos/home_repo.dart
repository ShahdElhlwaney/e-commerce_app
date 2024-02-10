

import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/services/api/api.dart';
import 'package:e_commerce/features/home/data/models/models.dart';


abstract class HomeRepo{
  Future<Either<Failure,Home>> getHomeData();
  Future<Either<Failure,Category>> getCategoriesData();
  Future<Either<Failure,CategoryProducts>> getCategoriesDetails(int id);
  Future<Either<Failure,ChangeFavorite>> changeFavourites(int productId);
  Future<Either<Failure,GetFavoritesModel>> getFavourites();
  Future<Either<Failure,ChangeCartModel>> changeCarts(int productId);
  Future<Either<Failure,GetCartsModel>> getCarts();
  Future<Either<Failure,Search>> search(String text);



}