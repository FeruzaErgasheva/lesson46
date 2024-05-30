import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';
@JsonSerializable()
class ProductModel {
  String title;
  String category;
  double price;
  String imageUrl;
  ProductModel({
    required this.category,
    required this.price,
    required this.title,
    required this.imageUrl
  });

  factory  ProductModel.fromJson(Map<String,dynamic> json){
    return _$ProductModelFromJson(json);
  }

  Map<String,dynamic> toJson(){
    return _$ProductModelToJson(this);
  }
}
