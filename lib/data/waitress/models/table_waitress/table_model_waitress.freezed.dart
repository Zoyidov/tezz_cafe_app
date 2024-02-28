// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_model_waitress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableModelWaitress _$TableModelWaitressFromJson(Map<String, dynamic> json) {
  return _TableModelWaitress.fromJson(json);
}

/// @nodoc
mixin _$TableModelWaitress {
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
  String get waiter => throw _privateConstructorUsedError;
  @JsonKey(name: "call")
  String get call => throw _privateConstructorUsedError;
  @JsonKey(name: "callId")
  String? get callId => throw _privateConstructorUsedError;
  @JsonKey(name: "callTime")
  DateTime? get callTime => throw _privateConstructorUsedError;
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
  @JsonKey(name: "id")
  String get tableModelWaitressId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableModelWaitressCopyWith<TableModelWaitress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelWaitressCopyWith<$Res> {
  factory $TableModelWaitressCopyWith(
          TableModelWaitress value, $Res Function(TableModelWaitress) then) =
      _$TableModelWaitressCopyWithImpl<$Res, TableModelWaitress>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "typeOfTable") TypeOfTable typeOfTable,
      @JsonKey(name: "occupied") bool occupied,
      @JsonKey(name: "setWaiterByAdmin") bool setWaiterByAdmin,
      @JsonKey(name: "waiter") String waiter,
      @JsonKey(name: "call") String call,
      @JsonKey(name: "callId") String? callId,
      @JsonKey(name: "callTime") DateTime? callTime,
      @JsonKey(name: "hasActiveOrder") bool hasActiveOrder,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v,
      @JsonKey(name: "qrCode") String qrCode,
      @JsonKey(name: "id") String tableModelWaitressId});

  $TypeOfTableCopyWith<$Res> get typeOfTable;
}

/// @nodoc
class _$TableModelWaitressCopyWithImpl<$Res, $Val extends TableModelWaitress>
    implements $TableModelWaitressCopyWith<$Res> {
  _$TableModelWaitressCopyWithImpl(this._value, this._then);

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
    Object? waiter = null,
    Object? call = null,
    Object? callId = freezed,
    Object? callTime = freezed,
    Object? hasActiveOrder = null,
    Object? restaurant = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
    Object? qrCode = null,
    Object? tableModelWaitressId = null,
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
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as String,
      call: null == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String,
      callId: freezed == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String?,
      callTime: freezed == callTime
          ? _value.callTime
          : callTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      tableModelWaitressId: null == tableModelWaitressId
          ? _value.tableModelWaitressId
          : tableModelWaitressId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeOfTableCopyWith<$Res> get typeOfTable {
    return $TypeOfTableCopyWith<$Res>(_value.typeOfTable, (value) {
      return _then(_value.copyWith(typeOfTable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableModelWaitressImplCopyWith<$Res>
    implements $TableModelWaitressCopyWith<$Res> {
  factory _$$TableModelWaitressImplCopyWith(_$TableModelWaitressImpl value,
          $Res Function(_$TableModelWaitressImpl) then) =
      __$$TableModelWaitressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "typeOfTable") TypeOfTable typeOfTable,
      @JsonKey(name: "occupied") bool occupied,
      @JsonKey(name: "setWaiterByAdmin") bool setWaiterByAdmin,
      @JsonKey(name: "waiter") String waiter,
      @JsonKey(name: "call") String call,
      @JsonKey(name: "callId") String? callId,
      @JsonKey(name: "callTime") DateTime? callTime,
      @JsonKey(name: "hasActiveOrder") bool hasActiveOrder,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v,
      @JsonKey(name: "qrCode") String qrCode,
      @JsonKey(name: "id") String tableModelWaitressId});

  @override
  $TypeOfTableCopyWith<$Res> get typeOfTable;
}

/// @nodoc
class __$$TableModelWaitressImplCopyWithImpl<$Res>
    extends _$TableModelWaitressCopyWithImpl<$Res, _$TableModelWaitressImpl>
    implements _$$TableModelWaitressImplCopyWith<$Res> {
  __$$TableModelWaitressImplCopyWithImpl(_$TableModelWaitressImpl _value,
      $Res Function(_$TableModelWaitressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typeOfTable = null,
    Object? occupied = null,
    Object? setWaiterByAdmin = null,
    Object? waiter = null,
    Object? call = null,
    Object? callId = freezed,
    Object? callTime = freezed,
    Object? hasActiveOrder = null,
    Object? restaurant = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
    Object? qrCode = null,
    Object? tableModelWaitressId = null,
  }) {
    return _then(_$TableModelWaitressImpl(
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
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as String,
      call: null == call
          ? _value.call
          : call // ignore: cast_nullable_to_non_nullable
              as String,
      callId: freezed == callId
          ? _value.callId
          : callId // ignore: cast_nullable_to_non_nullable
              as String?,
      callTime: freezed == callTime
          ? _value.callTime
          : callTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      tableModelWaitressId: null == tableModelWaitressId
          ? _value.tableModelWaitressId
          : tableModelWaitressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableModelWaitressImpl implements _TableModelWaitress {
  const _$TableModelWaitressImpl(
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
      @JsonKey(name: "id") required this.tableModelWaitressId});

  factory _$TableModelWaitressImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableModelWaitressImplFromJson(json);

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
  final String waiter;
  @override
  @JsonKey(name: "call")
  final String call;
  @override
  @JsonKey(name: "callId")
  final String? callId;
  @override
  @JsonKey(name: "callTime")
  final DateTime? callTime;
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
  @JsonKey(name: "id")
  final String tableModelWaitressId;

  @override
  String toString() {
    return 'TableModelWaitress(id: $id, name: $name, typeOfTable: $typeOfTable, occupied: $occupied, setWaiterByAdmin: $setWaiterByAdmin, waiter: $waiter, call: $call, callId: $callId, callTime: $callTime, hasActiveOrder: $hasActiveOrder, restaurant: $restaurant, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, qrCode: $qrCode, tableModelWaitressId: $tableModelWaitressId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableModelWaitressImpl &&
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
            (identical(other.callId, callId) || other.callId == callId) &&
            (identical(other.callTime, callTime) ||
                other.callTime == callTime) &&
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
            (identical(other.tableModelWaitressId, tableModelWaitressId) ||
                other.tableModelWaitressId == tableModelWaitressId));
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
      callId,
      callTime,
      hasActiveOrder,
      restaurant,
      createdAt,
      updatedAt,
      v,
      qrCode,
      tableModelWaitressId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableModelWaitressImplCopyWith<_$TableModelWaitressImpl> get copyWith =>
      __$$TableModelWaitressImplCopyWithImpl<_$TableModelWaitressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableModelWaitressImplToJson(
      this,
    );
  }
}

abstract class _TableModelWaitress implements TableModelWaitress {
  const factory _TableModelWaitress(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "typeOfTable") required final TypeOfTable typeOfTable,
      @JsonKey(name: "occupied") required final bool occupied,
      @JsonKey(name: "setWaiterByAdmin") required final bool setWaiterByAdmin,
      @JsonKey(name: "waiter") required final String waiter,
      @JsonKey(name: "call") required final String call,
      @JsonKey(name: "callId") required final String? callId,
      @JsonKey(name: "callTime") required final DateTime? callTime,
      @JsonKey(name: "hasActiveOrder") required final bool hasActiveOrder,
      @JsonKey(name: "restaurant") required final String restaurant,
      @JsonKey(name: "createdAt") required final DateTime createdAt,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "__v") required final int v,
      @JsonKey(name: "qrCode") required final String qrCode,
      @JsonKey(name: "id")
      required final String tableModelWaitressId}) = _$TableModelWaitressImpl;

  factory _TableModelWaitress.fromJson(Map<String, dynamic> json) =
      _$TableModelWaitressImpl.fromJson;

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
  String get waiter;
  @override
  @JsonKey(name: "call")
  String get call;
  @override
  @JsonKey(name: "callId")
  String? get callId;
  @override
  @JsonKey(name: "callTime")
  DateTime? get callTime;
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
  @JsonKey(name: "id")
  String get tableModelWaitressId;
  @override
  @JsonKey(ignore: true)
  _$$TableModelWaitressImplCopyWith<_$TableModelWaitressImpl> get copyWith =>
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
