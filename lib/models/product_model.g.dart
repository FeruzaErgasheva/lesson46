// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      category: json['category']['name'] as String,
      price: (json['price'] as num).toDouble(),
      title: json['title'] as String,
      imageUrl: json['images'][0] as String
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'category': instance.category,
      'price': instance.price,
    };
