import 'package:freezed_annotation/freezed_annotation.dart';

part 'orders_model.freezed.dart';
part 'orders_model.g.dart';


@freezed
class ProductElement with _$ProductElement {
  const factory ProductElement({
    @JsonKey(name: "product")
    required ProductProduct product,
    @JsonKey(name: "quantity")
    required int quantity,
    @JsonKey(name: "price")
    required int price,
    @JsonKey(name: "_id")
    required String id,
  }) = _ProductElement;

  factory ProductElement.fromJson(Map<String, dynamic> json) => _$ProductElementFromJson(json);
}

@freezed
class ProductProduct with _$ProductProduct {
  const factory ProductProduct({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "description")
    required String description,
    @JsonKey(name: "photo")
    required String photo,
    @JsonKey(name: "price")
    required int price,
    @JsonKey(name: "oldPrice")
    required int oldPrice,
    @JsonKey(name: "sale")
    required bool sale,
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
  }) = _ProductProduct;

  factory ProductProduct.fromJson(Map<String, dynamic> json) => _$ProductProductFromJson(json);
}
