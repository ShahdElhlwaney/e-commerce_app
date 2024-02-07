import 'package:json_annotation/json_annotation.dart';


class Item {
  String name;
  String image;
  String quantity;
  String price;
  String description;
  bool? isFavourite=false;
  Item(
      {required this.name,
      required this.image,
      required this.quantity,
      required this.price,
       required this.description,
        required this.isFavourite
      });

}
