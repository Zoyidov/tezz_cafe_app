import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';

part 'table_orders.freezed.dart';
part 'table_orders.g.dart';

@freezed
class TableOrders with _$TableOrders {
  const factory TableOrders({
    @JsonKey(name: "totalOrders") Orders? totalOrders,
    @JsonKey(name: "activeOrders") Orders? activeOrders,
  }) = _TableOrders;

  factory TableOrders.fromJson(Map<String, dynamic> json) =>
      _$TableOrdersFromJson(json);
}

@freezed
class ProductProduct with _$ProductProduct {
  const factory ProductProduct({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "photo") required String photo,
    @JsonKey(name: "price") required int price,
    @JsonKey(name: "oldPrice") required int oldPrice,
    @JsonKey(name: "sale") required dynamic sale,
    @JsonKey(name: "available") required bool? available,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "unit") required String unit,
    @JsonKey(name: "restaurant") required String restaurant,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "__v") required int v,
  }) = _ProductProduct;

  factory ProductProduct.fromJson(Map<String, dynamic> json) =>
      _$ProductProductFromJson(json);
}
