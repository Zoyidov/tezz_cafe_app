import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'waiter_coming_model.freezed.dart';
part 'waiter_coming_model.g.dart';

@freezed
class WaiterComingModel with _$WaiterComingModel {
  const factory WaiterComingModel({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "typeOfTable")
    required String typeOfTable,
    @JsonKey(name: "waiter")
    required String waiter,
    @JsonKey(name: "activeOrders")
    required List<ActiveOrder> activeOrders,
    @JsonKey(name: "archiveOrders")
    required List<dynamic> archiveOrders,
    @JsonKey(name: "totalOrders")
    required List<dynamic> totalOrders,
    @JsonKey(name: "activePrice")
    required int activePrice,
    @JsonKey(name: "activeItems")
    required int activeItems,
    @JsonKey(name: "totalPrice")
    required int totalPrice,
    @JsonKey(name: "totalItems")
    required int totalItems,
  }) = _WaiterComingModel;

  factory WaiterComingModel.fromJson(Map<String, dynamic> json) => _$WaiterComingModelFromJson(json);
}

@freezed
class ActiveOrder with _$ActiveOrder {
  const factory ActiveOrder({
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
    required List<Product> products,
    @JsonKey(name: "createdAt")
    required DateTime createdAt,
    @JsonKey(name: "updatedAt")
    required DateTime updatedAt,
    @JsonKey(name: "__v")
    required int v,
  }) = _ActiveOrder;

  factory ActiveOrder.fromJson(Map<String, dynamic> json) => _$ActiveOrderFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "product")
    required String product,
    @JsonKey(name: "quantity")
    required int quantity,
    @JsonKey(name: "price")
    required int price,
    @JsonKey(name: "_id")
    required String id,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
