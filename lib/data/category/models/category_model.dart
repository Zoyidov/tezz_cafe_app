import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "photo")
    required dynamic photo,
    @JsonKey(name: "restaurant")
    required String restaurant,
    @JsonKey(name: "createdAt")
    required DateTime createdAt,
    @JsonKey(name: "updatedAt")
    required DateTime updatedAt,
    @JsonKey(name: "__v")
    required int v,
    @JsonKey(name: "products")
    required List<Product> products,
    @JsonKey(name: "id")
    required String categoryModelId,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "description")
    required String description,
    @JsonKey(name: "photo")
    required dynamic photo,
    @JsonKey(name: "price")
    required int price,
    @JsonKey(name: "oldPrice")
    required int oldPrice,
    @JsonKey(name: "sale")
    required dynamic sale,
    @JsonKey(name: "available")
    required bool available,
    @JsonKey(name: "category")
    required String category,
    @JsonKey(name: "unit")
    required String unit,
    @JsonKey(name: "restaurant")
    required String restaurant,
    @JsonKey(name: "createdAt")
    required DateTime createdAt,
    @JsonKey(name: "updatedAt")
    required DateTime updatedAt,
    @JsonKey(name: "__v")
    required int v,
    @JsonKey(name: "id")
    required String productId,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
