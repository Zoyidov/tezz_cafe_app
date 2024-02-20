import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'zone_model.freezed.dart';
part 'zone_model.g.dart';

@freezed
class ZoneModel with _$ZoneModel {
  const factory ZoneModel({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "restaurant")
    required String restaurant,
  }) = _ZoneModel;

  factory ZoneModel.fromJson(Map<String, dynamic> json) => _$ZoneModelFromJson(json);
}
