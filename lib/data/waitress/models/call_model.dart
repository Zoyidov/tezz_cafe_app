import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'call_model.freezed.dart';
part 'call_model.g.dart';

@freezed
class CallModel with _$CallModel {
  const factory CallModel({
    @JsonKey(name: "_id")
    required String? id,
    @JsonKey(name: "name")
    required String? name,
    @JsonKey(name: "typeOfTable")
    required String? typeOfTable,
    @JsonKey(name: "occupied")
    required bool? occupied,
    @JsonKey(name: "setWaiterByAdmin")
    required bool? setWaiterByAdmin,
    @JsonKey(name: "waiter")
    required String? waiter,
    @JsonKey(name: "call")
    required String? call,
    @JsonKey(name: "callId")
    required String? callId,
    @JsonKey(name: "callTime")
    required DateTime? callTime,
    @JsonKey(name: "hasActiveOrder")
    required bool? hasActiveOrder,
    @JsonKey(name: "restaurant")
    required String? restaurant,
    @JsonKey(name: "createdAt")
    required DateTime? createdAt,
    @JsonKey(name: "updatedAt")
    required DateTime? updatedAt,
    @JsonKey(name: "__v")
    required int? v,
    @JsonKey(name: "qrCode")
    required String? qrCode,
    @JsonKey(name: "id")
    required String? callModelId,
  }) = _CallModel;

  factory CallModel.fromJson(Map<String, dynamic> json) => _$CallModelFromJson(json);
}
