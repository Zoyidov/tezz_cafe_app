import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tezz_cafe_app/data/waitress/models/waitress_order/table_orders.dart';

part 'table_model.freezed.dart';
part 'table_model.g.dart';

@freezed
class TableModel with _$TableModel {
  const factory TableModel({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "typeOfTable") required TypeOfTable typeOfTable,
    @JsonKey(name: "occupied") required bool occupied,
    @JsonKey(name: "setWaiterByAdmin") required bool setWaiterByAdmin,
    @JsonKey(name: "waiter") required Waiter? waiter,
    @JsonKey(name: "call") required String call,
    @JsonKey(name: "callId") required String? callId,
    @JsonKey(name: "callTime") required DateTime? callTime,
    @JsonKey(name: "hasActiveOrder") required bool hasActiveOrder,
    @JsonKey(name: "restaurant") required String restaurant,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "__v") required int v,
    @JsonKey(name: "qrCode") required String qrCode,
    @JsonKey(name: "activeOrders") required Orders? activeOrders,
    @JsonKey(name: "totalOrders") required Orders? totalOrders,
  }) = _TableModel;

  factory TableModel.fromJson(Map<String, dynamic> json) =>
      _$TableModelFromJson(json);
}

@freezed
class Orders with _$Orders {
  const factory Orders({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "table") required String table,
    @JsonKey(name: "waiter") required String waiter,
    @JsonKey(name: "totalPrice") required int totalPrice,
    @JsonKey(name: "restaurant") required String restaurant,
    @JsonKey(name: "products") required List<ProductElement> products,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "__v") required int v,
  }) = _Orders;

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}

@freezed
class ProductElement with _$ProductElement {
  const factory ProductElement({
    @JsonKey(name: "product") required ProductProduct product,
    @JsonKey(name: "quantity") required int quantity,
    @JsonKey(name: "price") required int price,
    @JsonKey(name: "_id") required String id,
  }) = _ProductElement;

  factory ProductElement.fromJson(Map<String, dynamic> json) =>
      _$ProductElementFromJson(json);
}

@freezed
class TypeOfTable with _$TypeOfTable {
  const factory TypeOfTable({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "restaurant") required String restaurant,
    @JsonKey(name: "__v") required int v,
  }) = _TypeOfTable;

  factory TypeOfTable.fromJson(Map<String, dynamic> json) =>
      _$TypeOfTableFromJson(json);
}

@freezed
class Waiter with _$Waiter {
  const factory Waiter({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "lastName") required String lastName,
    @JsonKey(name: "avatar") required String avatar,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "role") required String role,
    @JsonKey(name: "restaurant") required String restaurant,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "__v") required int v,
  }) = _Waiter;

  factory Waiter.fromJson(Map<String, dynamic> json) => _$WaiterFromJson(json);
}
