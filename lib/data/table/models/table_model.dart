import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'table_model.freezed.dart';
part 'table_model.g.dart';

@freezed
class TableModel with _$TableModel {
  const factory TableModel({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "typeOfTable")
    required String typeOfTable,
    @JsonKey(name: "waiter")
    required dynamic waiter,
    @JsonKey(name: "activeOrders")
    required List<dynamic> activeOrders,
    @JsonKey(name: "archiveOrders")
    required List<dynamic> archiveOrders,
    @JsonKey(name: "totalOrders")
    required List<dynamic> totalOrders,
    @JsonKey(name: "activePrice")
    required int activePrice,
    @JsonKey(name: "activeItems")
    required int activeItems,
    @JsonKey(name: "totalPrice")
    required int totalPrice,
    @JsonKey(name: "totalItems")
    required int totalItems,
  }) = _TableModel;

  factory TableModel.fromJson(Map<String, dynamic> json) => _$TableModelFromJson(json);
}
