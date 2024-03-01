// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductProduct _$ProductProductFromJson(Map<String, dynamic> json) {
  return _ProductProduct.fromJson(json);
}

/// @nodoc
mixin _$ProductProduct {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "oldPrice")
  int? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "sale")
  bool? get sale => throw _privateConstructorUsedError;
  @JsonKey(name: "available")
  bool? get available => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "restaurant")
  String? get restaurant => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get productId => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "photo") String? photo,
      @JsonKey(name: "price") int? price,
      @JsonKey(name: "oldPrice") int? oldPrice,
      @JsonKey(name: "sale") bool? sale,
      @JsonKey(name: "available") bool? available,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "restaurant") String? restaurant,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "id") String? productId});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photo = freezed,
    Object? price = freezed,
    Object? oldPrice = freezed,
    Object? sale = freezed,
    Object? available = freezed,
    Object? category = freezed,
    Object? unit = freezed,
    Object? restaurant = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      sale: freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as bool?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "photo") String? photo,
      @JsonKey(name: "price") int? price,
      @JsonKey(name: "oldPrice") int? oldPrice,
      @JsonKey(name: "sale") bool? sale,
      @JsonKey(name: "available") bool? available,
      @JsonKey(name: "category") String? category,
      @JsonKey(name: "unit") String? unit,
      @JsonKey(name: "restaurant") String? restaurant,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v,
      @JsonKey(name: "id") String? productId});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photo = freezed,
    Object? price = freezed,
    Object? oldPrice = freezed,
    Object? sale = freezed,
    Object? available = freezed,
    Object? category = freezed,
    Object? unit = freezed,
    Object? restaurant = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
    Object? productId = freezed,
  }) {
    return _then(_$ProductProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      sale: freezed == sale
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as bool?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
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
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "photo")
  final String? photo;
  @override
  @JsonKey(name: "price")
  final int? price;
  @override
  @JsonKey(name: "oldPrice")
  final int? oldPrice;
  @override
  @JsonKey(name: "sale")
  final bool? sale;
  @override
  @JsonKey(name: "available")
  final bool? available;
  @override
  @JsonKey(name: "category")
  final String? category;
  @override
  @JsonKey(name: "unit")
  final String? unit;
  @override
  @JsonKey(name: "restaurant")
  final String? restaurant;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;
  @override
  @JsonKey(name: "id")
  final String? productId;

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
            (identical(other.sale, sale) || other.sale == sale) &&
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
      sale,
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
          {@JsonKey(name: "_id") required final String? id,
          @JsonKey(name: "name") required final String? name,
          @JsonKey(name: "description") required final String? description,
          @JsonKey(name: "photo") required final String? photo,
          @JsonKey(name: "price") required final int? price,
          @JsonKey(name: "oldPrice") required final int? oldPrice,
          @JsonKey(name: "sale") required final bool? sale,
          @JsonKey(name: "available") required final bool? available,
          @JsonKey(name: "category") required final String? category,
          @JsonKey(name: "unit") required final String? unit,
          @JsonKey(name: "restaurant") required final String? restaurant,
          @JsonKey(name: "createdAt") required final DateTime? createdAt,
          @JsonKey(name: "updatedAt") required final DateTime? updatedAt,
          @JsonKey(name: "__v") required final int? v,
          @JsonKey(name: "id") required final String? productId}) =
      _$ProductProductImpl;

  factory _ProductProduct.fromJson(Map<String, dynamic> json) =
      _$ProductProductImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "photo")
  String? get photo;
  @override
  @JsonKey(name: "price")
  int? get price;
  @override
  @JsonKey(name: "oldPrice")
  int? get oldPrice;
  @override
  @JsonKey(name: "sale")
  bool? get sale;
  @override
  @JsonKey(name: "available")
  bool? get available;
  @override
  @JsonKey(name: "category")
  String? get category;
  @override
  @JsonKey(name: "unit")
  String? get unit;
  @override
  @JsonKey(name: "restaurant")
  String? get restaurant;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(name: "id")
  String? get productId;
  @override
  @JsonKey(ignore: true)
  _$$ProductProductImplCopyWith<_$ProductProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductElement _$ProductElementFromJson(Map<String, dynamic> json) {
  return _ProductElement.fromJson(json);
}

/// @nodoc
mixin _$ProductElement {
  @JsonKey(name: "product")
  ProductProduct get product => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductElementCopyWith<ProductElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductElementCopyWith<$Res> {
  factory $ProductElementCopyWith(
          ProductElement value, $Res Function(ProductElement) then) =
      _$ProductElementCopyWithImpl<$Res, ProductElement>;
  @useResult
  $Res call(
      {@JsonKey(name: "product") ProductProduct product,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "_id") String id});

  $ProductProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductElementCopyWithImpl<$Res, $Val extends ProductElement>
    implements $ProductElementCopyWith<$Res> {
  _$ProductElementCopyWithImpl(this._value, this._then);

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
              as ProductProduct,
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

  @override
  @pragma('vm:prefer-inline')
  $ProductProductCopyWith<$Res> get product {
    return $ProductProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductElementImplCopyWith<$Res>
    implements $ProductElementCopyWith<$Res> {
  factory _$$ProductElementImplCopyWith(_$ProductElementImpl value,
          $Res Function(_$ProductElementImpl) then) =
      __$$ProductElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product") ProductProduct product,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "_id") String id});

  @override
  $ProductProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductElementImplCopyWithImpl<$Res>
    extends _$ProductElementCopyWithImpl<$Res, _$ProductElementImpl>
    implements _$$ProductElementImplCopyWith<$Res> {
  __$$ProductElementImplCopyWithImpl(
      _$ProductElementImpl _value, $Res Function(_$ProductElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
    Object? price = null,
    Object? id = null,
  }) {
    return _then(_$ProductElementImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductProduct,
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
class _$ProductElementImpl implements _ProductElement {
  const _$ProductElementImpl(
      {@JsonKey(name: "product") required this.product,
      @JsonKey(name: "quantity") required this.quantity,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "_id") required this.id});

  factory _$ProductElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductElementImplFromJson(json);

  @override
  @JsonKey(name: "product")
  final ProductProduct product;
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
    return 'ProductElement(product: $product, quantity: $quantity, price: $price, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductElementImpl &&
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
  _$$ProductElementImplCopyWith<_$ProductElementImpl> get copyWith =>
      __$$ProductElementImplCopyWithImpl<_$ProductElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductElementImplToJson(
      this,
    );
  }
}

abstract class _ProductElement implements ProductElement {
  const factory _ProductElement(
      {@JsonKey(name: "product") required final ProductProduct product,
      @JsonKey(name: "quantity") required final int quantity,
      @JsonKey(name: "price") required final int price,
      @JsonKey(name: "_id") required final String id}) = _$ProductElementImpl;

  factory _ProductElement.fromJson(Map<String, dynamic> json) =
      _$ProductElementImpl.fromJson;

  @override
  @JsonKey(name: "product")
  ProductProduct get product;
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
  _$$ProductElementImplCopyWith<_$ProductElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
