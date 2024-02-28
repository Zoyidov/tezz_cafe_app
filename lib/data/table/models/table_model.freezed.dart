// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableModel _$TableModelFromJson(Map<String, dynamic> json) {
  return _TableModel.fromJson(json);
}

/// @nodoc
mixin _$TableModel {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "typeOfTable")
  TypeOfTable get typeOfTable => throw _privateConstructorUsedError;
  @JsonKey(name: "occupied")
  bool get occupied => throw _privateConstructorUsedError;
  @JsonKey(name: "setWaiterByAdmin")
  bool get setWaiterByAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: "waiter")
  Waiter? get waiter => throw _privateConstructorUsedError;
  @JsonKey(name: "call")
  String get call => throw _privateConstructorUsedError;
  @JsonKey(name: "callId")
  dynamic get callId => throw _privateConstructorUsedError;
  @JsonKey(name: "callTime")
  dynamic get callTime => throw _privateConstructorUsedError;
  @JsonKey(name: "hasActiveOrder")
  bool get hasActiveOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant")
  String get restaurant => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;
  @JsonKey(name: "qrCode")
  String get qrCode => throw _privateConstructorUsedError;
  @JsonKey(name: "totalOrders")
  dynamic get totalOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "activeOrders")
  Orders? get activeOrders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableModelCopyWith<TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) then) =
      _$TableModelCopyWithImpl<$Res, TableModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "typeOfTable") TypeOfTable typeOfTable,
      @JsonKey(name: "occupied") bool occupied,
      @JsonKey(name: "setWaiterByAdmin") bool setWaiterByAdmin,
      @JsonKey(name: "waiter") Waiter? waiter,
      @JsonKey(name: "call") String call,
      @JsonKey(name: "callId") dynamic callId,
      @JsonKey(name: "callTime") dynamic callTime,
      @JsonKey(name: "hasActiveOrder") bool hasActiveOrder,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v,
      @JsonKey(name: "qrCode") String qrCode,
      @JsonKey(name: "totalOrders") dynamic totalOrders,
      @JsonKey(name: "activeOrders") Orders? activeOrders});

  $TypeOfTableCopyWith<$Res> get typeOfTable;
  $WaiterCopyWith<$Res>? get waiter;
  $OrdersCopyWith<$Res>? get activeOrders;
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res, $Val extends TableModel>
    implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typeOfTable = null,
    Object? occupied = null,
    Object? setWaiterByAdmin = null,
    Object? waiter = freezed,
    Object? call = null,
    Object? callId = freezed,
    Object? callTime = freezed,
    Object? hasActiveOrder = null,
    Object? restaurant = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
    Object? qrCode = null,
    Object? totalOrders = freezed,
    Object? activeOrders = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfTable: null == typeOfTable
          ? _value.typeOfTable
          : typeOfTable // ignore: cast_nullable_to_non_nullable
              as TypeOfTable,
      occupied: null == occupied
          ? _value.occupied
          : occupied // ignore: cast_nullable_to_non_nullable
              as bool,
      setWaiterByAdmin: null == setWaiterByAdmin
          ? _value.setWaiterByAdmin
          : setWaiterByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      waiter: freezed == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as Waiter?,
      call: null == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String,
      callId: freezed == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      callTime: freezed == callTime
          ? _value.callTime
          : callTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasActiveOrder: null == hasActiveOrder
          ? _value.hasActiveOrder
          : hasActiveOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      totalOrders: freezed == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as dynamic,
      activeOrders: freezed == activeOrders
          ? _value.activeOrders
          : activeOrders // ignore: cast_nullable_to_non_nullable
              as Orders?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeOfTableCopyWith<$Res> get typeOfTable {
    return $TypeOfTableCopyWith<$Res>(_value.typeOfTable, (value) {
      return _then(_value.copyWith(typeOfTable: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WaiterCopyWith<$Res>? get waiter {
    if (_value.waiter == null) {
      return null;
    }

    return $WaiterCopyWith<$Res>(_value.waiter!, (value) {
      return _then(_value.copyWith(waiter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrdersCopyWith<$Res>? get activeOrders {
    if (_value.activeOrders == null) {
      return null;
    }

    return $OrdersCopyWith<$Res>(_value.activeOrders!, (value) {
      return _then(_value.copyWith(activeOrders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableModelImplCopyWith<$Res>
    implements $TableModelCopyWith<$Res> {
  factory _$$TableModelImplCopyWith(
          _$TableModelImpl value, $Res Function(_$TableModelImpl) then) =
      __$$TableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "typeOfTable") TypeOfTable typeOfTable,
      @JsonKey(name: "occupied") bool occupied,
      @JsonKey(name: "setWaiterByAdmin") bool setWaiterByAdmin,
      @JsonKey(name: "waiter") Waiter? waiter,
      @JsonKey(name: "call") String call,
      @JsonKey(name: "callId") dynamic callId,
      @JsonKey(name: "callTime") dynamic callTime,
      @JsonKey(name: "hasActiveOrder") bool hasActiveOrder,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v,
      @JsonKey(name: "qrCode") String qrCode,
      @JsonKey(name: "totalOrders") dynamic totalOrders,
      @JsonKey(name: "activeOrders") Orders? activeOrders});

  @override
  $TypeOfTableCopyWith<$Res> get typeOfTable;
  @override
  $WaiterCopyWith<$Res>? get waiter;
  @override
  $OrdersCopyWith<$Res>? get activeOrders;
}

/// @nodoc
class __$$TableModelImplCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$TableModelImpl>
    implements _$$TableModelImplCopyWith<$Res> {
  __$$TableModelImplCopyWithImpl(
      _$TableModelImpl _value, $Res Function(_$TableModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typeOfTable = null,
    Object? occupied = null,
    Object? setWaiterByAdmin = null,
    Object? waiter = freezed,
    Object? call = null,
    Object? callId = freezed,
    Object? callTime = freezed,
    Object? hasActiveOrder = null,
    Object? restaurant = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
    Object? qrCode = null,
    Object? totalOrders = freezed,
    Object? activeOrders = freezed,
  }) {
    return _then(_$TableModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfTable: null == typeOfTable
          ? _value.typeOfTable
          : typeOfTable // ignore: cast_nullable_to_non_nullable
              as TypeOfTable,
      occupied: null == occupied
          ? _value.occupied
          : occupied // ignore: cast_nullable_to_non_nullable
              as bool,
      setWaiterByAdmin: null == setWaiterByAdmin
          ? _value.setWaiterByAdmin
          : setWaiterByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      waiter: freezed == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as Waiter?,
      call: null == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String,
      callId: freezed == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      callTime: freezed == callTime
          ? _value.callTime
          : callTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasActiveOrder: null == hasActiveOrder
          ? _value.hasActiveOrder
          : hasActiveOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      totalOrders: freezed == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as dynamic,
      activeOrders: freezed == activeOrders
          ? _value.activeOrders
          : activeOrders // ignore: cast_nullable_to_non_nullable
              as Orders?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableModelImpl implements _TableModel {
  const _$TableModelImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "typeOfTable") required this.typeOfTable,
      @JsonKey(name: "occupied") required this.occupied,
      @JsonKey(name: "setWaiterByAdmin") required this.setWaiterByAdmin,
      @JsonKey(name: "waiter") required this.waiter,
      @JsonKey(name: "call") required this.call,
      @JsonKey(name: "callId") required this.callId,
      @JsonKey(name: "callTime") required this.callTime,
      @JsonKey(name: "hasActiveOrder") required this.hasActiveOrder,
      @JsonKey(name: "restaurant") required this.restaurant,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "__v") required this.v,
      @JsonKey(name: "qrCode") required this.qrCode,
      @JsonKey(name: "totalOrders") required this.totalOrders,
      @JsonKey(name: "activeOrders") required this.activeOrders});

  factory _$TableModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "typeOfTable")
  final TypeOfTable typeOfTable;
  @override
  @JsonKey(name: "occupied")
  final bool occupied;
  @override
  @JsonKey(name: "setWaiterByAdmin")
  final bool setWaiterByAdmin;
  @override
  @JsonKey(name: "waiter")
  final Waiter? waiter;
  @override
  @JsonKey(name: "call")
  final String call;
  @override
  @JsonKey(name: "callId")
  final dynamic callId;
  @override
  @JsonKey(name: "callTime")
  final dynamic callTime;
  @override
  @JsonKey(name: "hasActiveOrder")
  final bool hasActiveOrder;
  @override
  @JsonKey(name: "restaurant")
  final String restaurant;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "__v")
  final int v;
  @override
  @JsonKey(name: "qrCode")
  final String qrCode;
  @override
  @JsonKey(name: "totalOrders")
  final dynamic totalOrders;
  @override
  @JsonKey(name: "activeOrders")
  final Orders? activeOrders;

  @override
  String toString() {
    return 'TableModel(id: $id, name: $name, typeOfTable: $typeOfTable, occupied: $occupied, setWaiterByAdmin: $setWaiterByAdmin, waiter: $waiter, call: $call, callId: $callId, callTime: $callTime, hasActiveOrder: $hasActiveOrder, restaurant: $restaurant, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, qrCode: $qrCode, totalOrders: $totalOrders, activeOrders: $activeOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.typeOfTable, typeOfTable) ||
                other.typeOfTable == typeOfTable) &&
            (identical(other.occupied, occupied) ||
                other.occupied == occupied) &&
            (identical(other.setWaiterByAdmin, setWaiterByAdmin) ||
                other.setWaiterByAdmin == setWaiterByAdmin) &&
            (identical(other.waiter, waiter) || other.waiter == waiter) &&
            (identical(other.call, call) || other.call == call) &&
            const DeepCollectionEquality().equals(other.callId, callId) &&
            const DeepCollectionEquality().equals(other.callTime, callTime) &&
            (identical(other.hasActiveOrder, hasActiveOrder) ||
                other.hasActiveOrder == hasActiveOrder) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            const DeepCollectionEquality()
                .equals(other.totalOrders, totalOrders) &&
            (identical(other.activeOrders, activeOrders) ||
                other.activeOrders == activeOrders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      typeOfTable,
      occupied,
      setWaiterByAdmin,
      waiter,
      call,
      const DeepCollectionEquality().hash(callId),
      const DeepCollectionEquality().hash(callTime),
      hasActiveOrder,
      restaurant,
      createdAt,
      updatedAt,
      v,
      qrCode,
      const DeepCollectionEquality().hash(totalOrders),
      activeOrders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableModelImplCopyWith<_$TableModelImpl> get copyWith =>
      __$$TableModelImplCopyWithImpl<_$TableModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableModelImplToJson(
      this,
    );
  }
}

abstract class _TableModel implements TableModel {
  const factory _TableModel(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "typeOfTable") required final TypeOfTable typeOfTable,
      @JsonKey(name: "occupied") required final bool occupied,
      @JsonKey(name: "setWaiterByAdmin") required final bool setWaiterByAdmin,
      @JsonKey(name: "waiter") required final Waiter? waiter,
      @JsonKey(name: "call") required final String call,
      @JsonKey(name: "callId") required final dynamic callId,
      @JsonKey(name: "callTime") required final dynamic callTime,
      @JsonKey(name: "hasActiveOrder") required final bool hasActiveOrder,
      @JsonKey(name: "restaurant") required final String restaurant,
      @JsonKey(name: "createdAt") required final DateTime createdAt,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "__v") required final int v,
      @JsonKey(name: "qrCode") required final String qrCode,
      @JsonKey(name: "totalOrders") required final dynamic totalOrders,
      @JsonKey(name: "activeOrders")
      required final Orders? activeOrders}) = _$TableModelImpl;

  factory _TableModel.fromJson(Map<String, dynamic> json) =
      _$TableModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "typeOfTable")
  TypeOfTable get typeOfTable;
  @override
  @JsonKey(name: "occupied")
  bool get occupied;
  @override
  @JsonKey(name: "setWaiterByAdmin")
  bool get setWaiterByAdmin;
  @override
  @JsonKey(name: "waiter")
  Waiter? get waiter;
  @override
  @JsonKey(name: "call")
  String get call;
  @override
  @JsonKey(name: "callId")
  dynamic get callId;
  @override
  @JsonKey(name: "callTime")
  dynamic get callTime;
  @override
  @JsonKey(name: "hasActiveOrder")
  bool get hasActiveOrder;
  @override
  @JsonKey(name: "restaurant")
  String get restaurant;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "__v")
  int get v;
  @override
  @JsonKey(name: "qrCode")
  String get qrCode;
  @override
  @JsonKey(name: "totalOrders")
  dynamic get totalOrders;
  @override
  @JsonKey(name: "activeOrders")
  Orders? get activeOrders;
  @override
  @JsonKey(ignore: true)
  _$$TableModelImplCopyWith<_$TableModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeOfTable _$TypeOfTableFromJson(Map<String, dynamic> json) {
  return _TypeOfTable.fromJson(json);
}

/// @nodoc
mixin _$TypeOfTable {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant")
  String get restaurant => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeOfTableCopyWith<TypeOfTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeOfTableCopyWith<$Res> {
  factory $TypeOfTableCopyWith(
          TypeOfTable value, $Res Function(TypeOfTable) then) =
      _$TypeOfTableCopyWithImpl<$Res, TypeOfTable>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class _$TypeOfTableCopyWithImpl<$Res, $Val extends TypeOfTable>
    implements $TypeOfTableCopyWith<$Res> {
  _$TypeOfTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? restaurant = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeOfTableImplCopyWith<$Res>
    implements $TypeOfTableCopyWith<$Res> {
  factory _$$TypeOfTableImplCopyWith(
          _$TypeOfTableImpl value, $Res Function(_$TypeOfTableImpl) then) =
      __$$TypeOfTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class __$$TypeOfTableImplCopyWithImpl<$Res>
    extends _$TypeOfTableCopyWithImpl<$Res, _$TypeOfTableImpl>
    implements _$$TypeOfTableImplCopyWith<$Res> {
  __$$TypeOfTableImplCopyWithImpl(
      _$TypeOfTableImpl _value, $Res Function(_$TypeOfTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? restaurant = null,
    Object? v = null,
  }) {
    return _then(_$TypeOfTableImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeOfTableImpl implements _TypeOfTable {
  const _$TypeOfTableImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "restaurant") required this.restaurant,
      @JsonKey(name: "__v") required this.v});

  factory _$TypeOfTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeOfTableImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "restaurant")
  final String restaurant;
  @override
  @JsonKey(name: "__v")
  final int v;

  @override
  String toString() {
    return 'TypeOfTable(id: $id, name: $name, restaurant: $restaurant, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeOfTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, restaurant, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeOfTableImplCopyWith<_$TypeOfTableImpl> get copyWith =>
      __$$TypeOfTableImplCopyWithImpl<_$TypeOfTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeOfTableImplToJson(
      this,
    );
  }
}

abstract class _TypeOfTable implements TypeOfTable {
  const factory _TypeOfTable(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "restaurant") required final String restaurant,
      @JsonKey(name: "__v") required final int v}) = _$TypeOfTableImpl;

  factory _TypeOfTable.fromJson(Map<String, dynamic> json) =
      _$TypeOfTableImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "restaurant")
  String get restaurant;
  @override
  @JsonKey(name: "__v")
  int get v;
  @override
  @JsonKey(ignore: true)
  _$$TypeOfTableImplCopyWith<_$TypeOfTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Waiter _$WaiterFromJson(Map<String, dynamic> json) {
  return _Waiter.fromJson(json);
}

/// @nodoc
mixin _$Waiter {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant")
  String get restaurant => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WaiterCopyWith<Waiter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaiterCopyWith<$Res> {
  factory $WaiterCopyWith(Waiter value, $Res Function(Waiter) then) =
      _$WaiterCopyWithImpl<$Res, Waiter>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class _$WaiterCopyWithImpl<$Res, $Val extends Waiter>
    implements $WaiterCopyWith<$Res> {
  _$WaiterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = freezed,
    Object? phone = null,
    Object? role = null,
    Object? restaurant = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaiterImplCopyWith<$Res> implements $WaiterCopyWith<$Res> {
  factory _$$WaiterImplCopyWith(
          _$WaiterImpl value, $Res Function(_$WaiterImpl) then) =
      __$$WaiterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "firstName") String firstName,
      @JsonKey(name: "lastName") String lastName,
      @JsonKey(name: "avatar") String? avatar,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class __$$WaiterImplCopyWithImpl<$Res>
    extends _$WaiterCopyWithImpl<$Res, _$WaiterImpl>
    implements _$$WaiterImplCopyWith<$Res> {
  __$$WaiterImplCopyWithImpl(
      _$WaiterImpl _value, $Res Function(_$WaiterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = freezed,
    Object? phone = null,
    Object? role = null,
    Object? restaurant = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_$WaiterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      v: null == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaiterImpl implements _Waiter {
  const _$WaiterImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "firstName") required this.firstName,
      @JsonKey(name: "lastName") required this.lastName,
      @JsonKey(name: "avatar") required this.avatar,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "role") required this.role,
      @JsonKey(name: "restaurant") required this.restaurant,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "__v") required this.v});

  factory _$WaiterImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaiterImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "firstName")
  final String firstName;
  @override
  @JsonKey(name: "lastName")
  final String lastName;
  @override
  @JsonKey(name: "avatar")
  final String? avatar;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "role")
  final String role;
  @override
  @JsonKey(name: "restaurant")
  final String restaurant;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "__v")
  final int v;

  @override
  String toString() {
    return 'Waiter(id: $id, firstName: $firstName, lastName: $lastName, avatar: $avatar, phone: $phone, role: $role, restaurant: $restaurant, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaiterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, avatar,
      phone, role, restaurant, createdAt, updatedAt, v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaiterImplCopyWith<_$WaiterImpl> get copyWith =>
      __$$WaiterImplCopyWithImpl<_$WaiterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaiterImplToJson(
      this,
    );
  }
}

abstract class _Waiter implements Waiter {
  const factory _Waiter(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "firstName") required final String firstName,
      @JsonKey(name: "lastName") required final String lastName,
      @JsonKey(name: "avatar") required final String? avatar,
      @JsonKey(name: "phone") required final String phone,
      @JsonKey(name: "role") required final String role,
      @JsonKey(name: "restaurant") required final String restaurant,
      @JsonKey(name: "createdAt") required final DateTime createdAt,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "__v") required final int v}) = _$WaiterImpl;

  factory _Waiter.fromJson(Map<String, dynamic> json) = _$WaiterImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "firstName")
  String get firstName;
  @override
  @JsonKey(name: "lastName")
  String get lastName;
  @override
  @JsonKey(name: "avatar")
  String? get avatar;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "role")
  String get role;
  @override
  @JsonKey(name: "restaurant")
  String get restaurant;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "__v")
  int get v;
  @override
  @JsonKey(ignore: true)
  _$$WaiterImplCopyWith<_$WaiterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
