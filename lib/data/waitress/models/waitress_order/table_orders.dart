import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_orders.freezed.dart';
part 'table_orders.g.dart';

@freezed
class TableOrders with _$TableOrders {
  const factory TableOrders({
    @JsonKey(name: "totalOrders")
     Orders? totalOrders,
    @JsonKey(name: "activeOrders")
     Orders? activeOrders,
  }) = _TableOrders;

  factory TableOrders.fromJson(Map<String, dynamic> json) => _$TableOrdersFromJson(json);
}

@freezed
class Orders with _$Orders {
  const factory Orders({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "table")
    required String table,
    @JsonKey(name: "waiter")
    required String waiter,
    @JsonKey(name: "totalPrice")
    required int totalPrice,
    @JsonKey(name: "restaurant")
    required String restaurant,
    @JsonKey(name: "products")
    required List<ProductElement> products,
    @JsonKey(name: "createdAt")
    required DateTime createdAt,
    @JsonKey(name: "updatedAt")
    required DateTime updatedAt,
    @JsonKey(name: "__v")
    required int v,
  }) = _Orders;

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}

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
    required dynamic sale,
    @JsonKey(name: "available")
    required bool? available,
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
