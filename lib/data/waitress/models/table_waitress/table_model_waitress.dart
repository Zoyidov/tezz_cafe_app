import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';

part 'table_model_waitress.freezed.dart';
part 'table_model_waitress.g.dart';

@freezed
class TableModelWaitress with _$TableModelWaitress {
  const factory TableModelWaitress({
    @JsonKey(name: "_id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "typeOfTable") required TypeOfTable typeOfTable,
    @JsonKey(name: "occupied") required bool occupied,
    @JsonKey(name: "setWaiterByAdmin") required bool setWaiterByAdmin,
    @JsonKey(name: "waiter") required String waiter,
    @JsonKey(name: "call") required String call,
    @JsonKey(name: "callId") required String? callId,
    @JsonKey(name: "callTime") required DateTime? callTime,
    @JsonKey(name: "hasActiveOrder") required bool hasActiveOrder,
    @JsonKey(name: "restaurant") required String restaurant,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
    @JsonKey(name: "__v") required int v,
    @JsonKey(name: "qrCode") required String qrCode,
    @JsonKey(name: "id") required String tableModelWaitressId,
  }) = _TableModelWaitress;

  factory TableModelWaitress.fromJson(Map<String, dynamic> json) =>
      _$TableModelWaitressFromJson(json);
}
