// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableModelImpl _$$TableModelImplFromJson(Map<String, dynamic> json) =>
    _$TableModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      typeOfTable:
          TypeOfTable.fromJson(json['typeOfTable'] as Map<String, dynamic>),
      occupied: json['occupied'] as bool,
      setWaiterByAdmin: json['setWaiterByAdmin'] as bool,
      waiter: json['waiter'] == null
          ? null
          : Waiter.fromJson(json['waiter'] as Map<String, dynamic>),
      call: json['call'] as String,
      callId: json['callId'],
      callTime: json['callTime'],
      hasActiveOrder: json['hasActiveOrder'] as bool,
      restaurant: json['restaurant'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
      qrCode: json['qrCode'] as String,
      totalOrders: json['totalOrders'],
      activeOrders: json['activeOrders'] == null
          ? null
          : ActiveOrders.fromJson(json['activeOrders'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TableModelImplToJson(_$TableModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'typeOfTable': instance.typeOfTable,
      'occupied': instance.occupied,
      'setWaiterByAdmin': instance.setWaiterByAdmin,
      'waiter': instance.waiter,
      'call': instance.call,
      'callId': instance.callId,
      'callTime': instance.callTime,
      'hasActiveOrder': instance.hasActiveOrder,
      'restaurant': instance.restaurant,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
      'qrCode': instance.qrCode,
      'totalOrders': instance.totalOrders,
      'activeOrders': instance.activeOrders,
    };

_$ActiveOrdersImpl _$$ActiveOrdersImplFromJson(Map<String, dynamic> json) =>
    _$ActiveOrdersImpl(
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

Map<String, dynamic> _$$ActiveOrdersImplToJson(_$ActiveOrdersImpl instance) =>
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

_$ProductProductImpl _$$ProductProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductProductImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      photo: json['photo'],
      price: json['price'] as int,
      oldPrice: json['oldPrice'] as int,
      sale: json['sale'],
      available: json['available'] as bool,
      category: json['category'] as String,
      unit: json['unit'] as String,
      restaurant: json['restaurant'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
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
    };

_$TypeOfTableImpl _$$TypeOfTableImplFromJson(Map<String, dynamic> json) =>
    _$TypeOfTableImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      restaurant: json['restaurant'] as String,
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$TypeOfTableImplToJson(_$TypeOfTableImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'restaurant': instance.restaurant,
      '__v': instance.v,
    };

_$WaiterImpl _$$WaiterImplFromJson(Map<String, dynamic> json) => _$WaiterImpl(
      id: json['_id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      avatar: json['avatar'] as String?,
      phone: json['phone'] as String,
      role: json['role'] as String,
      restaurant: json['restaurant'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
    );

Map<String, dynamic> _$$WaiterImplToJson(_$WaiterImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatar': instance.avatar,
      'phone': instance.phone,
      'role': instance.role,
      'restaurant': instance.restaurant,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
