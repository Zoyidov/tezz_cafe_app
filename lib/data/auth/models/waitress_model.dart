import 'package:freezed_annotation/freezed_annotation.dart';

part 'waitress_model.freezed.dart';
part 'waitress_model.g.dart';

@freezed
class WaitressModel with _$WaitressModel {
  const factory WaitressModel({
    @JsonKey(name: "_id")
    required String id,
    @JsonKey(name: "firstName")
    required String firstName,
    @JsonKey(name: "lastName")
    required String lastName,
    @JsonKey(name: "avatar")
     String? avatar ,
    @JsonKey(name: "phone")
    required String phone,
    @JsonKey(name: "role")
    required String role,
    @JsonKey(name: "restaurant")
    required String restaurant,
    @JsonKey(name: "createdAt")
    required DateTime createdAt,
    @JsonKey(name: "updatedAt")
    required DateTime updatedAt,
    @JsonKey(name: "id")
    required String waitressModelId,
  }) = _WaitressModel;

  factory WaitressModel.fromJson(Map<String, dynamic> json) => _$WaitressModelFromJson(json);
}