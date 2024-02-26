// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waiter_coming_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WaiterComingModel _$WaiterComingModelFromJson(Map<String, dynamic> json) {
  return _WaiterComingModel.fromJson(json);
}

/// @nodoc
mixin _$WaiterComingModel {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "typeOfTable")
  String get typeOfTable => throw _privateConstructorUsedError;
  @JsonKey(name: "waiter")
  String get waiter => throw _privateConstructorUsedError;
  @JsonKey(name: "activeOrders")
  List<ActiveOrder> get activeOrders => throw _privateConstructorUsedError;
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
  $WaiterComingModelCopyWith<WaiterComingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaiterComingModelCopyWith<$Res> {
  factory $WaiterComingModelCopyWith(
          WaiterComingModel value, $Res Function(WaiterComingModel) then) =
      _$WaiterComingModelCopyWithImpl<$Res, WaiterComingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "typeOfTable") String typeOfTable,
      @JsonKey(name: "waiter") String waiter,
      @JsonKey(name: "activeOrders") List<ActiveOrder> activeOrders,
      @JsonKey(name: "archiveOrders") List<dynamic> archiveOrders,
      @JsonKey(name: "totalOrders") List<dynamic> totalOrders,
      @JsonKey(name: "activePrice") int activePrice,
      @JsonKey(name: "activeItems") int activeItems,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "totalItems") int totalItems});
}

/// @nodoc
class _$WaiterComingModelCopyWithImpl<$Res, $Val extends WaiterComingModel>
    implements $WaiterComingModelCopyWith<$Res> {
  _$WaiterComingModelCopyWithImpl(this._value, this._then);

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
    Object? waiter = null,
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
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as String,
      activeOrders: null == activeOrders
          ? _value.activeOrders
          : activeOrders // ignore: cast_nullable_to_non_nullable
              as List<ActiveOrder>,
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
abstract class _$$WaiterComingModelImplCopyWith<$Res>
    implements $WaiterComingModelCopyWith<$Res> {
  factory _$$WaiterComingModelImplCopyWith(_$WaiterComingModelImpl value,
          $Res Function(_$WaiterComingModelImpl) then) =
      __$$WaiterComingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "typeOfTable") String typeOfTable,
      @JsonKey(name: "waiter") String waiter,
      @JsonKey(name: "activeOrders") List<ActiveOrder> activeOrders,
      @JsonKey(name: "archiveOrders") List<dynamic> archiveOrders,
      @JsonKey(name: "totalOrders") List<dynamic> totalOrders,
      @JsonKey(name: "activePrice") int activePrice,
      @JsonKey(name: "activeItems") int activeItems,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "totalItems") int totalItems});
}

/// @nodoc
class __$$WaiterComingModelImplCopyWithImpl<$Res>
    extends _$WaiterComingModelCopyWithImpl<$Res, _$WaiterComingModelImpl>
    implements _$$WaiterComingModelImplCopyWith<$Res> {
  __$$WaiterComingModelImplCopyWithImpl(_$WaiterComingModelImpl _value,
      $Res Function(_$WaiterComingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? typeOfTable = null,
    Object? waiter = null,
    Object? activeOrders = null,
    Object? archiveOrders = null,
    Object? totalOrders = null,
    Object? activePrice = null,
    Object? activeItems = null,
    Object? totalPrice = null,
    Object? totalItems = null,
  }) {
    return _then(_$WaiterComingModelImpl(
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
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as String,
      activeOrders: null == activeOrders
          ? _value._activeOrders
          : activeOrders // ignore: cast_nullable_to_non_nullable
              as List<ActiveOrder>,
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
class _$WaiterComingModelImpl implements _WaiterComingModel {
  const _$WaiterComingModelImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "typeOfTable") required this.typeOfTable,
      @JsonKey(name: "waiter") required this.waiter,
      @JsonKey(name: "activeOrders")
      required final List<ActiveOrder> activeOrders,
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

  factory _$WaiterComingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaiterComingModelImplFromJson(json);

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
  final String waiter;
  final List<ActiveOrder> _activeOrders;
  @override
  @JsonKey(name: "activeOrders")
  List<ActiveOrder> get activeOrders {
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
    return 'WaiterComingModel(id: $id, name: $name, typeOfTable: $typeOfTable, waiter: $waiter, activeOrders: $activeOrders, archiveOrders: $archiveOrders, totalOrders: $totalOrders, activePrice: $activePrice, activeItems: $activeItems, totalPrice: $totalPrice, totalItems: $totalItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaiterComingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.typeOfTable, typeOfTable) ||
                other.typeOfTable == typeOfTable) &&
            (identical(other.waiter, waiter) || other.waiter == waiter) &&
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
      waiter,
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
  _$$WaiterComingModelImplCopyWith<_$WaiterComingModelImpl> get copyWith =>
      __$$WaiterComingModelImplCopyWithImpl<_$WaiterComingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaiterComingModelImplToJson(
      this,
    );
  }
}

abstract class _WaiterComingModel implements WaiterComingModel {
  const factory _WaiterComingModel(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "typeOfTable") required final String typeOfTable,
      @JsonKey(name: "waiter") required final String waiter,
      @JsonKey(name: "activeOrders")
      required final List<ActiveOrder> activeOrders,
      @JsonKey(name: "archiveOrders")
      required final List<dynamic> archiveOrders,
      @JsonKey(name: "totalOrders") required final List<dynamic> totalOrders,
      @JsonKey(name: "activePrice") required final int activePrice,
      @JsonKey(name: "activeItems") required final int activeItems,
      @JsonKey(name: "totalPrice") required final int totalPrice,
      @JsonKey(name: "totalItems")
      required final int totalItems}) = _$WaiterComingModelImpl;

  factory _WaiterComingModel.fromJson(Map<String, dynamic> json) =
      _$WaiterComingModelImpl.fromJson;

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
  String get waiter;
  @override
  @JsonKey(name: "activeOrders")
  List<ActiveOrder> get activeOrders;
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
  _$$WaiterComingModelImplCopyWith<_$WaiterComingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveOrder _$ActiveOrderFromJson(Map<String, dynamic> json) {
  return _ActiveOrder.fromJson(json);
}

/// @nodoc
mixin _$ActiveOrder {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "table")
  String get table => throw _privateConstructorUsedError;
  @JsonKey(name: "waiter")
  String get waiter => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPrice")
  int get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant")
  String get restaurant => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<Product> get products => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveOrderCopyWith<ActiveOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveOrderCopyWith<$Res> {
  factory $ActiveOrderCopyWith(
          ActiveOrder value, $Res Function(ActiveOrder) then) =
      _$ActiveOrderCopyWithImpl<$Res, ActiveOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "table") String table,
      @JsonKey(name: "waiter") String waiter,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "products") List<Product> products,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class _$ActiveOrderCopyWithImpl<$Res, $Val extends ActiveOrder>
    implements $ActiveOrderCopyWith<$Res> {
  _$ActiveOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? table = null,
    Object? waiter = null,
    Object? totalPrice = null,
    Object? restaurant = null,
    Object? products = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as String,
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
abstract class _$$ActiveOrderImplCopyWith<$Res>
    implements $ActiveOrderCopyWith<$Res> {
  factory _$$ActiveOrderImplCopyWith(
          _$ActiveOrderImpl value, $Res Function(_$ActiveOrderImpl) then) =
      __$$ActiveOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "table") String table,
      @JsonKey(name: "waiter") String waiter,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "products") List<Product> products,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class __$$ActiveOrderImplCopyWithImpl<$Res>
    extends _$ActiveOrderCopyWithImpl<$Res, _$ActiveOrderImpl>
    implements _$$ActiveOrderImplCopyWith<$Res> {
  __$$ActiveOrderImplCopyWithImpl(
      _$ActiveOrderImpl _value, $Res Function(_$ActiveOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? table = null,
    Object? waiter = null,
    Object? totalPrice = null,
    Object? restaurant = null,
    Object? products = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
  }) {
    return _then(_$ActiveOrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as String,
      waiter: null == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
class _$ActiveOrderImpl implements _ActiveOrder {
  const _$ActiveOrderImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "table") required this.table,
      @JsonKey(name: "waiter") required this.waiter,
      @JsonKey(name: "totalPrice") required this.totalPrice,
      @JsonKey(name: "restaurant") required this.restaurant,
      @JsonKey(name: "products") required final List<Product> products,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "__v") required this.v})
      : _products = products;

  factory _$ActiveOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveOrderImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "table")
  final String table;
  @override
  @JsonKey(name: "waiter")
  final String waiter;
  @override
  @JsonKey(name: "totalPrice")
  final int totalPrice;
  @override
  @JsonKey(name: "restaurant")
  final String restaurant;
  final List<Product> _products;
  @override
  @JsonKey(name: "products")
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

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
    return 'ActiveOrder(id: $id, table: $table, waiter: $waiter, totalPrice: $totalPrice, restaurant: $restaurant, products: $products, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.table, table) || other.table == table) &&
            (identical(other.waiter, waiter) || other.waiter == waiter) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      table,
      waiter,
      totalPrice,
      restaurant,
      const DeepCollectionEquality().hash(_products),
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveOrderImplCopyWith<_$ActiveOrderImpl> get copyWith =>
      __$$ActiveOrderImplCopyWithImpl<_$ActiveOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveOrderImplToJson(
      this,
    );
  }
}

abstract class _ActiveOrder implements ActiveOrder {
  const factory _ActiveOrder(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "table") required final String table,
      @JsonKey(name: "waiter") required final String waiter,
      @JsonKey(name: "totalPrice") required final int totalPrice,
      @JsonKey(name: "restaurant") required final String restaurant,
      @JsonKey(name: "products") required final List<Product> products,
      @JsonKey(name: "createdAt") required final DateTime createdAt,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "__v") required final int v}) = _$ActiveOrderImpl;

  factory _ActiveOrder.fromJson(Map<String, dynamic> json) =
      _$ActiveOrderImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "table")
  String get table;
  @override
  @JsonKey(name: "waiter")
  String get waiter;
  @override
  @JsonKey(name: "totalPrice")
  int get totalPrice;
  @override
  @JsonKey(name: "restaurant")
  String get restaurant;
  @override
  @JsonKey(name: "products")
  List<Product> get products;
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
  _$$ActiveOrderImplCopyWith<_$ActiveOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "product")
  String get product => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "product") String product,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "_id") String id});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
    Object? price = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product") String product,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "_id") String id});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
    Object? price = null,
    Object? id = null,
  }) {
    return _then(_$ProductImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: "product") required this.product,
      @JsonKey(name: "quantity") required this.quantity,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "_id") required this.id});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "product")
  final String product;
  @override
  @JsonKey(name: "quantity")
  final int quantity;
  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "_id")
  final String id;

  @override
  String toString() {
    return 'Product(product: $product, quantity: $quantity, price: $price, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, quantity, price, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "product") required final String product,
      @JsonKey(name: "quantity") required final int quantity,
      @JsonKey(name: "price") required final int price,
      @JsonKey(name: "_id") required final String id}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "product")
  String get product;
  @override
  @JsonKey(name: "quantity")
  int get quantity;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
