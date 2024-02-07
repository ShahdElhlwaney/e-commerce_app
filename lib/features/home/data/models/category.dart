


class CategoryData{
  bool? status;
  Data? data;
 CategoryData.fromJson(Map<String,dynamic>json)
 {
   status=json['status'];
   data=Data.fromJson(json['data']);
 }
}
class Data{
List<CategoryItem>categories=[];
Data.fromJson(Map<String,dynamic>json){
  json['data'].forEach((element){
    categories.add(CategoryItem.fromJson(element));
  });
}
}
class CategoryItem{
  int? id;
  String? name;
  String? image;
  CategoryItem.fromJson(Map<String,dynamic>json){
    id=json['id'];
    name=json['name'];
    image=json['image'];
  }

}