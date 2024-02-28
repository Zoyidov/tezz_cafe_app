import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tezz_cafe_app/data/orders/models/orders_model.dart';

part 'order_waitress_model.freezed.dart';
part 'order_waitress_model.g.dart';

@freezed
class OrderWaitressModel with _$OrderWaitressModel {
  const factory OrderWaitressModel({
    @JsonKey(name: "totalOrders")
    required Orders totalOrders,
    @JsonKey(name: "activeOrders")
    required Orders activeOrders,
  }) = _OrderWaitressModel;

  factory OrderWaitressModel.fromJson(Map<String, dynamic> json) => _$OrderWaitressModelFromJson(json);
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
