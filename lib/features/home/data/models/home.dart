

class Home
{
  bool? status;
  Data? data;
  Home.fromJson(Map<String,dynamic>json)
  {
    status=json['status'];
    data=Data.fromJson(json['data']);
  }
}
class Data
{
  List<Baner>banners=[];
  List<Product>products=[];
  Data.fromJson(Map<String,dynamic>json)
  {
    json['banners'].forEach((element){
      banners.add(Baner.fromJson(element));
    });
    json['products'].forEach((element){
      products.add(Product.fromJson(element));
    });
  }
}
class Baner
{
  int? id;
  String? image;
  Baner.fromJson(Map<String,dynamic>json)
  {
    id=json['id'];
    image=json['image'];

  }
}
class Product
{
  int? id;
  dynamic price;
  dynamic oldPrice;
  dynamic discount;
  String? image;
  String? name;
  bool? inFavourites;
  bool? inCart;
  String? description;
  Product.fromJson(Map<String,dynamic>json)
  {
    id=json['id'];
    price=json['price'];
    oldPrice=json['old_price'];
    discount=json['discount'];
    image=json['image'];
    name=json['name'];
    inFavourites=json['in_favorites'];
    inCart=json['in_cart'];
    description=json['description'];

  }
}