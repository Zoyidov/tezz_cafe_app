import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_model.freezed.dart';
part 'call_model.g.dart';

@freezed
class CallModel with _$CallModel {
  const factory CallModel({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "id")
    required String callModelId,
  }) = _CallModel;

  factory CallModel.fromJson(Map<String, dynamic> json) => _$CallModelFromJson(json);
}
