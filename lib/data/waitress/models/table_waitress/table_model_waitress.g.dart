// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_model_waitress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableModelWaitressImpl _$$TableModelWaitressImplFromJson(
        Map<String, dynamic> json) =>
    _$TableModelWaitressImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      typeOfTable:
          TypeOfTable.fromJson(json['typeOfTable'] as Map<String, dynamic>),
      occupied: json['occupied'] as bool,
      setWaiterByAdmin: json['setWaiterByAdmin'] as bool,
      waiter: json['waiter'] as String,
      call: json['call'] as String,
      callId: json['callId'] as String?,
      callTime: json['callTime'] == null
          ? null
          : DateTime.parse(json['callTime'] as String),
      hasActiveOrder: json['hasActiveOrder'] as bool,
      restaurant: json['restaurant'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int,
      qrCode: json['qrCode'] as String,
      tableModelWaitressId: json['id'] as String,
    );

Map<String, dynamic> _$$TableModelWaitressImplToJson(
        _$TableModelWaitressImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'typeOfTable': instance.typeOfTable,
      'occupied': instance.occupied,
      'setWaiterByAdmin': instance.setWaiterByAdmin,
      'waiter': instance.waiter,
      'call': instance.call,
      'callId': instance.callId,
      'callTime': instance.callTime?.toIso8601String(),
      'hasActiveOrder': instance.hasActiveOrder,
      'restaurant': instance.restaurant,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
      'qrCode': instance.qrCode,
      'id': instance.tableModelWaitressId,
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
