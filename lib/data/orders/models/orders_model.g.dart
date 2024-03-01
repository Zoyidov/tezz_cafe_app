// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductProductImpl _$$ProductProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductProductImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      photo: json['photo'] as String?,
      price: json['price'] as int?,
      oldPrice: json['oldPrice'] as int?,
      sale: json['sale'] as bool?,
      available: json['available'] as bool?,
      category: json['category'] as String?,
      unit: json['unit'] as String?,
      restaurant: json['restaurant'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
      productId: json['id'] as String?,
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
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'id': instance.productId,
    };

_$ProductElementImpl _$$ProductElementImplFromJson(Map<String, dynamic> json) =>
    _$ProductElementImpl(
      product: ProductProduct.fromJson(json['product'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
      price: json['price'] as int,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$ProductElementImplToJson(
        _$ProductElementImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
      '_id': instance.id,
    };