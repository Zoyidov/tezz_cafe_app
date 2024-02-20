// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableModelImpl _$$TableModelImplFromJson(Map<String, dynamic> json) =>
    _$TableModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      typeOfTable: json['typeOfTable'] as String,
      waiter: json['waiter'] as String?,
      activeOrders: (json['activeOrders'] as List<dynamic>)
          .map((e) => ActiveOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      archiveOrders: json['archiveOrders'] as List<dynamic>,
      totalOrders: json['totalOrders'] as List<dynamic>,
      activePrice: json['activePrice'] as int,
      activeItems: json['activeItems'] as int,
      totalPrice: json['totalPrice'] as int,
      totalItems: json['totalItems'] as int,
    );

Map<String, dynamic> _$$TableModelImplToJson(_$TableModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'typeOfTable': instance.typeOfTable,
      'waiter': instance.waiter,
      'activeOrders': instance.activeOrders,
      'archiveOrders': instance.archiveOrders,
      'totalOrders': instance.totalOrders,
      'activePrice': instance.activePrice,
      'activeItems': instance.activeItems,
      'totalPrice': instance.totalPrice,
      'totalItems': instance.totalItems,
    };

_$ActiveOrderImpl _$$ActiveOrderImplFromJson(Map<String, dynamic> json) =>
    _$ActiveOrderImpl(
      id: json['_id'] as String,
      table: json['table'] as String,
      waiter: json['waiter'] as String,
      totalPrice: json['totalPrice'] as int,
      restaurant: json['restaurant'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$ActiveOrderImplToJson(_$ActiveOrderImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'table': instance.table,
      'waiter': instance.waiter,
      'totalPrice': instance.totalPrice,
      'restaurant': instance.restaurant,
      'products': instance.products,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      product: json['product'] as String,
      quantity: json['quantity'] as int,
      price: json['price'] as int,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
      '_id': instance.id,
    };
