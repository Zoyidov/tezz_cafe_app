import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tezz_cafe_app/data/product/models/product_model.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "photo") required dynamic photo,
    @JsonKey(name: "restaurant") required String restaurant,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "products") required List<ProductModel> products,
    @JsonKey(name: "id") required String categoryModelId,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
