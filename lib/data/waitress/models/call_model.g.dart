// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CallModelImpl _$$CallModelImplFromJson(Map<String, dynamic> json) =>
    _$CallModelImpl(
      id: json['_id'] as String,
      name: json['name'] as String,
      typeOfTable: json['typeOfTable'] as String,
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
      callModelId: json['id'] as String,
    );

Map<String, dynamic> _$$CallModelImplToJson(_$CallModelImpl instance) =>
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
      'id': instance.callModelId,
    };
