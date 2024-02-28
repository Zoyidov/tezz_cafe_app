import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "photo", defaultValue: '') String? photo,
    @JsonKey(name: "price") required int price,
    @JsonKey(name: "oldPrice") required int oldPrice,
    @JsonKey(name: "sale", defaultValue: false) bool? sale,
    @JsonKey(name: "available") bool? available,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "unit") required String unit,
    @JsonKey(name: "restaurant") required String restaurant,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "__v") required int v,
    @JsonKey(name: "id") required String productModelId,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}


