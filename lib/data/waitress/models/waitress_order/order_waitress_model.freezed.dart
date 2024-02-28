// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_waitress_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderWaitressModel _$OrderWaitressModelFromJson(Map<String, dynamic> json) {
  return _OrderWaitressModel.fromJson(json);
}

/// @nodoc
mixin _$OrderWaitressModel {
  @JsonKey(name: "totalOrders")
  Orders get totalOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "activeOrders")
  Orders get activeOrders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderWaitressModelCopyWith<OrderWaitressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderWaitressModelCopyWith<$Res> {
  factory $OrderWaitressModelCopyWith(
          OrderWaitressModel value, $Res Function(OrderWaitressModel) then) =
      _$OrderWaitressModelCopyWithImpl<$Res, OrderWaitressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalOrders") Orders totalOrders,
      @JsonKey(name: "activeOrders") Orders activeOrders});

  $OrdersCopyWith<$Res> get totalOrders;
  $OrdersCopyWith<$Res> get activeOrders;
}

/// @nodoc
class _$OrderWaitressModelCopyWithImpl<$Res, $Val extends OrderWaitressModel>
    implements $OrderWaitressModelCopyWith<$Res> {
  _$OrderWaitressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? activeOrders = null,
  }) {
    return _then(_value.copyWith(
      totalOrders: null == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as Orders,
      activeOrders: null == activeOrders
          ? _value.activeOrders
          : activeOrders // ignore: cast_nullable_to_non_nullable
              as Orders,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrdersCopyWith<$Res> get totalOrders {
    return $OrdersCopyWith<$Res>(_value.totalOrders, (value) {
      return _then(_value.copyWith(totalOrders: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrdersCopyWith<$Res> get activeOrders {
    return $OrdersCopyWith<$Res>(_value.activeOrders, (value) {
      return _then(_value.copyWith(activeOrders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderWaitressModelImplCopyWith<$Res>
    implements $OrderWaitressModelCopyWith<$Res> {
  factory _$$OrderWaitressModelImplCopyWith(_$OrderWaitressModelImpl value,
          $Res Function(_$OrderWaitressModelImpl) then) =
      __$$OrderWaitressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalOrders") Orders totalOrders,
      @JsonKey(name: "activeOrders") Orders activeOrders});

  @override
  $OrdersCopyWith<$Res> get totalOrders;
  @override
  $OrdersCopyWith<$Res> get activeOrders;
}

/// @nodoc
class __$$OrderWaitressModelImplCopyWithImpl<$Res>
    extends _$OrderWaitressModelCopyWithImpl<$Res, _$OrderWaitressModelImpl>
    implements _$$OrderWaitressModelImplCopyWith<$Res> {
  __$$OrderWaitressModelImplCopyWithImpl(_$OrderWaitressModelImpl _value,
      $Res Function(_$OrderWaitressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? activeOrders = null,
  }) {
    return _then(_$OrderWaitressModelImpl(
      totalOrders: null == totalOrders
          ? _value.totalOrders
          : totalOrders // ignore: cast_nullable_to_non_nullable
              as Orders,
      activeOrders: null == activeOrders
          ? _value.activeOrders
          : activeOrders // ignore: cast_nullable_to_non_nullable
              as Orders,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderWaitressModelImpl implements _OrderWaitressModel {
  const _$OrderWaitressModelImpl(
      {@JsonKey(name: "totalOrders") required this.totalOrders,
      @JsonKey(name: "activeOrders") required this.activeOrders});

  factory _$OrderWaitressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderWaitressModelImplFromJson(json);

  @override
  @JsonKey(name: "totalOrders")
  final Orders totalOrders;
  @override
  @JsonKey(name: "activeOrders")
  final Orders activeOrders;

  @override
  String toString() {
    return 'OrderWaitressModel(totalOrders: $totalOrders, activeOrders: $activeOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderWaitressModelImpl &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.activeOrders, activeOrders) ||
                other.activeOrders == activeOrders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalOrders, activeOrders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderWaitressModelImplCopyWith<_$OrderWaitressModelImpl> get copyWith =>
      __$$OrderWaitressModelImplCopyWithImpl<_$OrderWaitressModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderWaitressModelImplToJson(
      this,
    );
  }
}

abstract class _OrderWaitressModel implements OrderWaitressModel {
  const factory _OrderWaitressModel(
          {@JsonKey(name: "totalOrders") required final Orders totalOrders,
          @JsonKey(name: "activeOrders") required final Orders activeOrders}) =
      _$OrderWaitressModelImpl;

  factory _OrderWaitressModel.fromJson(Map<String, dynamic> json) =
      _$OrderWaitressModelImpl.fromJson;

  @override
  @JsonKey(name: "totalOrders")
  Orders get totalOrders;
  @override
  @JsonKey(name: "activeOrders")
  Orders get activeOrders;
  @override
  @JsonKey(ignore: true)
  _$$OrderWaitressModelImplCopyWith<_$OrderWaitressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Orders _$OrdersFromJson(Map<String, dynamic> json) {
  return _Orders.fromJson(json);
}

/// @nodoc
mixin _$Orders {
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
  List<ProductElement> get products => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res, Orders>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "table") String table,
      @JsonKey(name: "waiter") String waiter,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "products") List<ProductElement> products,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class _$OrdersCopyWithImpl<$Res, $Val extends Orders>
    implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._value, this._then);

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
              as List<ProductElement>,
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
abstract class _$$OrdersImplCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$$OrdersImplCopyWith(
          _$OrdersImpl value, $Res Function(_$OrdersImpl) then) =
      __$$OrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "table") String table,
      @JsonKey(name: "waiter") String waiter,
      @JsonKey(name: "totalPrice") int totalPrice,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "products") List<ProductElement> products,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v});
}

/// @nodoc
class __$$OrdersImplCopyWithImpl<$Res>
    extends _$OrdersCopyWithImpl<$Res, _$OrdersImpl>
    implements _$$OrdersImplCopyWith<$Res> {
  __$$OrdersImplCopyWithImpl(
      _$OrdersImpl _value, $Res Function(_$OrdersImpl) _then)
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
    return _then(_$OrdersImpl(
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
              as List<ProductElement>,
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
class _$OrdersImpl implements _Orders {
  const _$OrdersImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "table") required this.table,
      @JsonKey(name: "waiter") required this.waiter,
      @JsonKey(name: "totalPrice") required this.totalPrice,
      @JsonKey(name: "restaurant") required this.restaurant,
      @JsonKey(name: "products") required final List<ProductElement> products,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "__v") required this.v})
      : _products = products;

  factory _$OrdersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersImplFromJson(json);

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
  final List<ProductElement> _products;
  @override
  @JsonKey(name: "products")
  List<ProductElement> get products {
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
    return 'Orders(id: $id, table: $table, waiter: $waiter, totalPrice: $totalPrice, restaurant: $restaurant, products: $products, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersImpl &&
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
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      __$$OrdersImplCopyWithImpl<_$OrdersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersImplToJson(
      this,
    );
  }
}

abstract class _Orders implements Orders {
  const factory _Orders(
      {@JsonKey(name: "_id") required final String id,
      @JsonKey(name: "table") required final String table,
      @JsonKey(name: "waiter") required final String waiter,
      @JsonKey(name: "totalPrice") required final int totalPrice,
      @JsonKey(name: "restaurant") required final String restaurant,
      @JsonKey(name: "products") required final List<ProductElement> products,
      @JsonKey(name: "createdAt") required final DateTime createdAt,
      @JsonKey(name: "updatedAt") required final DateTime updatedAt,
      @JsonKey(name: "__v") required final int v}) = _$OrdersImpl;

  factory _Orders.fromJson(Map<String, dynamic> json) = _$OrdersImpl.fromJson;

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
  List<ProductElement> get products;
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
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductProduct _$ProductProductFromJson(Map<String, dynamic> json) {
  return _ProductProduct.fromJson(json);
}

/// @nodoc
mixin _$ProductProduct {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  String get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "oldPrice")
  int get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale")
  dynamic get sale => throw _privateConstructorUsedError;
  @JsonKey(name: "available")
  bool? get available => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant")
  String get restaurant => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int get v => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductProductCopyWith<ProductProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductProductCopyWith<$Res> {
  factory $ProductProductCopyWith(
          ProductProduct value, $Res Function(ProductProduct) then) =
      _$ProductProductCopyWithImpl<$Res, ProductProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "photo") String photo,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "oldPrice") int oldPrice,
      @JsonKey(name: "sale") dynamic sale,
      @JsonKey(name: "available") bool? available,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v,
      @JsonKey(name: "id") String productId});
}

/// @nodoc
class _$ProductProductCopyWithImpl<$Res, $Val extends ProductProduct>
    implements $ProductProductCopyWith<$Res> {
  _$ProductProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photo = null,
    Object? price = null,
    Object? oldPrice = null,
    Object? sale = freezed,
    Object? available = freezed,
    Object? category = null,
    Object? unit = null,
    Object? restaurant = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
    Object? productId = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      oldPrice: null == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sale: freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
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
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductProductImplCopyWith<$Res>
    implements $ProductProductCopyWith<$Res> {
  factory _$$ProductProductImplCopyWith(_$ProductProductImpl value,
          $Res Function(_$ProductProductImpl) then) =
      __$$ProductProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "photo") String photo,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "oldPrice") int oldPrice,
      @JsonKey(name: "sale") dynamic sale,
      @JsonKey(name: "available") bool? available,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "restaurant") String restaurant,
      @JsonKey(name: "createdAt") DateTime createdAt,
      @JsonKey(name: "updatedAt") DateTime updatedAt,
      @JsonKey(name: "__v") int v,
      @JsonKey(name: "id") String productId});
}

/// @nodoc
class __$$ProductProductImplCopyWithImpl<$Res>
    extends _$ProductProductCopyWithImpl<$Res, _$ProductProductImpl>
    implements _$$ProductProductImplCopyWith<$Res> {
  __$$ProductProductImplCopyWithImpl(
      _$ProductProductImpl _value, $Res Function(_$ProductProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? photo = null,
    Object? price = null,
    Object? oldPrice = null,
    Object? sale = freezed,
    Object? available = freezed,
    Object? category = null,
    Object? unit = null,
    Object? restaurant = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? v = null,
    Object? productId = null,
  }) {
    return _then(_$ProductProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      oldPrice: null == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sale: freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as dynamic,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
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
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductProductImpl implements _ProductProduct {
  const _$ProductProductImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "photo") required this.photo,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "oldPrice") required this.oldPrice,
      @JsonKey(name: "sale") required this.sale,
      @JsonKey(name: "available") required this.available,
      @JsonKey(name: "category") required this.category,
      @JsonKey(name: "unit") required this.unit,
      @JsonKey(name: "restaurant") required this.restaurant,
      @JsonKey(name: "createdAt") required this.createdAt,
      @JsonKey(name: "updatedAt") required this.updatedAt,
      @JsonKey(name: "__v") required this.v,
      @JsonKey(name: "id") required this.productId});

  factory _$ProductProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductProductImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "photo")
  final String photo;
  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "oldPrice")
  final int oldPrice;
  @override
  @JsonKey(name: "sale")
  final dynamic sale;
  @override
  @JsonKey(name: "available")
  final bool? available;
  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "unit")
  final String unit;
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
  @JsonKey(name: "id")
  final String productId;

  @override
  String toString() {
    return 'ProductProduct(id: $id, name: $name, description: $description, photo: $photo, price: $price, oldPrice: $oldPrice, sale: $sale, available: $available, category: $category, unit: $unit, restaurant: $restaurant, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            const DeepCollectionEquality().equals(other.sale, sale) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      photo,
      price,
      oldPrice,
      const DeepCollectionEquality().hash(sale),
      available,
      category,
      unit,
      restaurant,
      createdAt,
      updatedAt,
      v,
      productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductProductImplCopyWith<_$ProductProductImpl> get copyWith =>
      __$$ProductProductImplCopyWithImpl<_$ProductProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductProductImplToJson(
      this,
    );
  }
}

abstract class _ProductProduct implements ProductProduct {
  const factory _ProductProduct(
          {@JsonKey(name: "_id") required final String id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "photo") required final String photo,
          @JsonKey(name: "price") required final int price,
          @JsonKey(name: "oldPrice") required final int oldPrice,
          @JsonKey(name: "sale") required final dynamic sale,
          @JsonKey(name: "available") required final bool? available,
          @JsonKey(name: "category") required final String category,
          @JsonKey(name: "unit") required final String unit,
          @JsonKey(name: "restaurant") required final String restaurant,
          @JsonKey(name: "createdAt") required final DateTime createdAt,
          @JsonKey(name: "updatedAt") required final DateTime updatedAt,
          @JsonKey(name: "__v") required final int v,
          @JsonKey(name: "id") required final String productId}) =
      _$ProductProductImpl;

  factory _ProductProduct.fromJson(Map<String, dynamic> json) =
      _$ProductProductImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "photo")
  String get photo;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(name: "oldPrice")
  int get oldPrice;
  @override
  @JsonKey(name: "sale")
  dynamic get sale;
  @override
  @JsonKey(name: "available")
  bool? get available;
  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "unit")
  String get unit;
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
  @JsonKey(name: "id")
  String get productId;
  @override
  @JsonKey(ignore: true)
  _$$ProductProductImplCopyWith<_$ProductProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
