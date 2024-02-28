// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_waitress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderWaitressModelImpl _$$OrderWaitressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderWaitressModelImpl(
      totalOrders: Orders.fromJson(json['totalOrders'] as Map<String, dynamic>),
      activeOrders:
          Orders.fromJson(json['activeOrders'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderWaitressModelImplToJson(
        _$OrderWaitressModelImpl instance) =>
    <String, dynamic>{
      'totalOrders': instance.totalOrders,
      'activeOrders': instance.activeOrders,
    };

_$OrdersImpl _$$OrdersImplFromJson(Map<String, dynamic> json) => _$OrdersImpl(
      id: json['_id'] as String,
      table: json['table'] as String,
      waiter: json['waiter'] as String,
      totalPrice: json['totalPrice'] as int,
      restaurant: json['restaurant'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$OrdersImplToJson(_$OrdersImpl instance) =>
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

_$ProductProductImpl _$$ProductProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductProductImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      photo: json['photo'] as String,
      price: json['price'] as int,
      oldPrice: json['oldPrice'] as int,
      sale: json['sale'],
      available: json['available'] as bool?,
      category: json['category'] as String,
      unit: json['unit'] as String,
      restaurant: json['restaurant'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
      productId: json['id'] as String,
    );

Map<String, dynamic> _$$ProductProductImplToJson(
        _$ProductProductImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'photo': instance.photo,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'sale': instance.sale,
      'available': instance.available,
      'category': instance.category,
      'unit': instance.unit,
      'restaurant': instance.restaurant,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
      'id': instance.productId,
    };
