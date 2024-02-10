class GetCartsModel {
  bool? status;
  Data? data;
  GetCartsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = Data.fromJson(json['data']);
  }
}
class Data {
  List<CartItems> cartItems=[];
  dynamic subTotal;
  dynamic total;
  Data.fromJson(Map<String, dynamic> json) {
    if (json['cart_items'] != null) {
      json['cart_items'].forEach((v) {
        cartItems.add( CartItems.fromJson(v));
      });
    }
    subTotal = json['sub_total'].toDouble();
    total = json['total'].toDouble();
  }
}
class CartItems {
  dynamic id;
  dynamic quantity;
  CartProduct? product;
  CartItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['quantity'];
    product =
        CartProduct.fromJson(json['product']);
  }
}
class CartProduct {
  dynamic id;
  dynamic price;
  dynamic oldPrice;
  dynamic discount;
  String? image;
  String? name;
  String? description;
  bool? inCart;
  List<String>?images;
  bool ?inFavorites;
  CartProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];//.toDouble;
    oldPrice = json['old_price'];//.toDouble;
    discount = json['discount'].toDouble();
    image = json['image'];
    name = json['name'];
    description = json['description'];
    images=json['images'].cast<String>();
    inCart = json['in_cart'];
    inFavorites=json['in_favorites'];
  }
}