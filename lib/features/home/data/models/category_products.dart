class CategoryProducts {
  bool? status;
  CategoryData? data;
  CategoryProducts.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data =  CategoryData.fromJson(json['data']);
  }
}
class CategoryData {
  List<DataDetails> data=[];
  CategoryData.fromJson(Map<String, dynamic> json) {

    json['data'].forEach((v) {
      data.add( DataDetails.fromJson(v));
    });

  }
}
class DataDetails {
  int? id;
  dynamic price;
  dynamic oldPrice;
  String? image;
  String? name;
  bool? inFavorites;
  bool? inCart;
  DataDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    image = json['image'];
    name = json['name'];
    inFavorites = json['in_favorites'];
    inCart = json['in_cart'];
  }

}