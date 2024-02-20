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
      waiter: json['waiter'],
      activeOrders: json['activeOrders'] as List<dynamic>,
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
