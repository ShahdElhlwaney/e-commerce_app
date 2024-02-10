


class Category{
  bool? status;
  CategoriesData? data;
 Category.fromJson(Map<String,dynamic>json)
 {
   status=json['status'];
   data=CategoriesData.fromJson(json['data']);
 }
}
class CategoriesData{
List<CategoryItem>categories=[];
CategoriesData.fromJson(Map<String,dynamic>json){
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