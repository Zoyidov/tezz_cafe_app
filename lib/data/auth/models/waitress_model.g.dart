// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waitress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WaitressModelImpl _$$WaitressModelImplFromJson(Map<String, dynamic> json) =>
    _$WaitressModelImpl(
      id: json['_id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      avatar: json['avatar'] as String,
      phone: json['phone'] as String,
      role: json['role'] as String,
      restaurant: json['restaurant'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      waitressModelId: json['id'] as String,
    );

Map<String, dynamic> _$$WaitressModelImplToJson(_$WaitressModelImpl instance) =>
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
      'id': instance.waitressModelId,
    };
