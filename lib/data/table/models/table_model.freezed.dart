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
  String get typeOfTable => throw _privateConstructorUsedError;
  @JsonKey(name: "waiter")
  dynamic get waiter => throw _privateConstructorUsedError;
  @JsonKey(name: "activeOrders")
  List<dynamic> get activeOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "archiveOrders")
  List<dynamic> get archiveOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "totalOrders")
  List<dynamic> get totalOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "activePrice")
  int get activePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "activeItems")
  int get activeItems => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPrice")
  int get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "totalItems")
  int get totalItems => throw _privateConstructorUsedError;

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
      @JsonKey(name: "typeOfTable") String typeOfTable,
      @JsonKey(name: "waiter") dynamic waiter,
      @JsonKey(name: "activeOrders") List<dynamic> activeOrders,
      @JsonKey(name: "archiveOrders") List<dynamic> archiveOrders,
      @JsonKey(name: "totalOrders") List<dynamic> totalOrders,
      @JsonKey(name: "activePrice") int activePrice,
      @JsonKey(name: "activeItems") int activeItems,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "totalItems") int totalItems});
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
    Object? waiter = freezed,
    Object? activeOrders = null,
    Object? archiveOrders = null,
    Object? totalOrders = null,
    Object? activePrice = null,
    Object? activeItems = null,
    Object? totalPrice = null,
    Object? totalItems = null,
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
              as String,
      waiter: freezed == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      activeOrders: null == activeOrders
          ? _value.activeOrders
          : activeOrders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      archiveOrders: null == archiveOrders
          ? _value.archiveOrders
          : archiveOrders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      totalOrders: null == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      activePrice: null == activePrice
          ? _value.activePrice
          : activePrice // ignore: cast_nullable_to_non_nullable
              as int,
      activeItems: null == activeItems
          ? _value.activeItems
          : activeItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
      @JsonKey(name: "typeOfTable") String typeOfTable,
      @JsonKey(name: "waiter") dynamic waiter,
      @JsonKey(name: "activeOrders") List<dynamic> activeOrders,
      @JsonKey(name: "archiveOrders") List<dynamic> archiveOrders,
      @JsonKey(name: "totalOrders") List<dynamic> totalOrders,
      @JsonKey(name: "activePrice") int activePrice,
      @JsonKey(name: "activeItems") int activeItems,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "totalItems") int totalItems});
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
    Object? waiter = freezed,
    Object? activeOrders = null,
    Object? archiveOrders = null,
    Object? totalOrders = null,
    Object? activePrice = null,
    Object? activeItems = null,
    Object? totalPrice = null,
    Object? totalItems = null,
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
              as String,
      waiter: freezed == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      activeOrders: null == activeOrders
          ? _value._activeOrders
          : activeOrders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      archiveOrders: null == archiveOrders
          ? _value._archiveOrders
          : archiveOrders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      totalOrders: null == totalOrders
          ? _value._totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      activePrice: null == activePrice
          ? _value.activePrice
          : activePrice // ignore: cast_nullable_to_non_nullable
              as int,
      activeItems: null == activeItems
          ? _value.activeItems
          : activeItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
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
      @JsonKey(name: "waiter") required this.waiter,
      @JsonKey(name: "activeOrders") required final List<dynamic> activeOrders,
      @JsonKey(name: "archiveOrders")
      required final List<dynamic> archiveOrders,
      @JsonKey(name: "totalOrders") required final List<dynamic> totalOrders,
      @JsonKey(name: "activePrice") required this.activePrice,
      @JsonKey(name: "activeItems") required this.activeItems,
      @JsonKey(name: "totalPrice") required this.totalPrice,
      @JsonKey(name: "totalItems") required this.totalItems})
      : _activeOrders = activeOrders,
        _archiveOrders = archiveOrders,
        _totalOrders = totalOrders;

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
  final String typeOfTable;
  @override
  @JsonKey(name: "waiter")
  final dynamic waiter;
  final List<dynamic> _activeOrders;
  @override
  @JsonKey(name: "activeOrders")
  List<dynamic> get activeOrders {
    if (_activeOrders is EqualUnmodifiableListView) return _activeOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeOrders);
  }

  final List<dynamic> _archiveOrders;
  @override
  @JsonKey(name: "archiveOrders")
  List<dynamic> get archiveOrders {
    if (_archiveOrders is EqualUnmodifiableListView) return _archiveOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_archiveOrders);
  }

  final List<dynamic> _totalOrders;
  @override
  @JsonKey(name: "totalOrders")
  List<dynamic> get totalOrders {
    if (_totalOrders is EqualUnmodifiableListView) return _totalOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_totalOrders);
  }

  @override
  @JsonKey(name: "activePrice")
  final int activePrice;
  @override
  @JsonKey(name: "activeItems")
  final int activeItems;
  @override
  @JsonKey(name: "totalPrice")
  final int totalPrice;
  @override
  @JsonKey(name: "totalItems")
  final int totalItems;

  @override
  String toString() {
    return 'TableModel(id: $id, name: $name, typeOfTable: $typeOfTable, waiter: $waiter, activeOrders: $activeOrders, archiveOrders: $archiveOrders, totalOrders: $totalOrders, activePrice: $activePrice, activeItems: $activeItems, totalPrice: $totalPrice, totalItems: $totalItems)';
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
            const DeepCollectionEquality().equals(other.waiter, waiter) &&
            const DeepCollectionEquality()
                .equals(other._activeOrders, _activeOrders) &&
            const DeepCollectionEquality()
                .equals(other._archiveOrders, _archiveOrders) &&
            const DeepCollectionEquality()
                .equals(other._totalOrders, _totalOrders) &&
            (identical(other.activePrice, activePrice) ||
                other.activePrice == activePrice) &&
            (identical(other.activeItems, activeItems) ||
                other.activeItems == activeItems) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      typeOfTable,
      const DeepCollectionEquality().hash(waiter),
      const DeepCollectionEquality().hash(_activeOrders),
      const DeepCollectionEquality().hash(_archiveOrders),
      const DeepCollectionEquality().hash(_totalOrders),
      activePrice,
      activeItems,
      totalPrice,
      totalItems);

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
      @JsonKey(name: "typeOfTable") required final String typeOfTable,
      @JsonKey(name: "waiter") required final dynamic waiter,
      @JsonKey(name: "activeOrders") required final List<dynamic> activeOrders,
      @JsonKey(name: "archiveOrders")
      required final List<dynamic> archiveOrders,
      @JsonKey(name: "totalOrders") required final List<dynamic> totalOrders,
      @JsonKey(name: "activePrice") required final int activePrice,
      @JsonKey(name: "activeItems") required final int activeItems,
      @JsonKey(name: "totalPrice") required final int totalPrice,
      @JsonKey(name: "totalItems")
      required final int totalItems}) = _$TableModelImpl;

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
  String get typeOfTable;
  @override
  @JsonKey(name: "waiter")
  dynamic get waiter;
  @override
  @JsonKey(name: "activeOrders")
  List<dynamic> get activeOrders;
  @override
  @JsonKey(name: "archiveOrders")
  List<dynamic> get archiveOrders;
  @override
  @JsonKey(name: "totalOrders")
  List<dynamic> get totalOrders;
  @override
  @JsonKey(name: "activePrice")
  int get activePrice;
  @override
  @JsonKey(name: "activeItems")
  int get activeItems;
  @override
  @JsonKey(name: "totalPrice")
  int get totalPrice;
  @override
  @JsonKey(name: "totalItems")
  int get totalItems;
  @override
  @JsonKey(ignore: true)
  _$$TableModelImplCopyWith<_$TableModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
