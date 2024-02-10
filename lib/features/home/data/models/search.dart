

class Search {
  bool? status;
  SearchData? data;
  Search.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ?  SearchData.fromJson(json['data']) : null;
  }
}
class SearchData {
  dynamic currentPage;
  List<DataProduct>? data;
  String? firstPageUrl;
  dynamic from;
  dynamic lastPage;
  String? lastPageUrl;
  dynamic nextPageUrl;
  String? path;
  dynamic perPage;
  dynamic prevPageUrl;
  dynamic to;
  dynamic total;
  SearchData.fromJson(Map<String, dynamic> json){
    currentPage = json['current_page'];
    data = <DataProduct>[];
    json['data'].forEach((v) {
      data!.add(new DataProduct.fromJson(v));
    });
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }
}
class DataProduct {
  dynamic id;
  dynamic price;
  dynamic oldPrice;

  String? image;
  String? name;
  String? description;
  List<String>? images;
  bool? inFavorites;
  bool? inCart;
  DataProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    image = json['image'];
    name = json['name'];
    description = json['description'];
    images = json['images'].cast<String>();
    inFavorites = json['in_favorites'];
    inCart = json['in_cart'];
    oldPrice=json["old_price"];

  }
}
