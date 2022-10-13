// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wishlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wishlist _$WishlistFromJson(Map<String, dynamic> json) {
  return _Wishlist.fromJson(json);
}

/// @nodoc
mixin _$Wishlist {
  int get id => throw _privateConstructorUsedError;
  String get bookTitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistCopyWith<Wishlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistCopyWith<$Res> {
  factory $WishlistCopyWith(Wishlist value, $Res Function(Wishlist) then) =
      _$WishlistCopyWithImpl<$Res>;
  $Res call({int id, String bookTitle, String image, double price, int stock});
}

/// @nodoc
class _$WishlistCopyWithImpl<$Res> implements $WishlistCopyWith<$Res> {
  _$WishlistCopyWithImpl(this._value, this._then);

  final Wishlist _value;
  // ignore: unused_field
  final $Res Function(Wishlist) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? bookTitle = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? stock = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookTitle: bookTitle == freezed
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WishlistCopyWith<$Res> implements $WishlistCopyWith<$Res> {
  factory _$$_WishlistCopyWith(
          _$_Wishlist value, $Res Function(_$_Wishlist) then) =
      __$$_WishlistCopyWithImpl<$Res>;
  @override
  $Res call({int id, String bookTitle, String image, double price, int stock});
}

/// @nodoc
class __$$_WishlistCopyWithImpl<$Res> extends _$WishlistCopyWithImpl<$Res>
    implements _$$_WishlistCopyWith<$Res> {
  __$$_WishlistCopyWithImpl(
      _$_Wishlist _value, $Res Function(_$_Wishlist) _then)
      : super(_value, (v) => _then(v as _$_Wishlist));

  @override
  _$_Wishlist get _value => super._value as _$_Wishlist;

  @override
  $Res call({
    Object? id = freezed,
    Object? bookTitle = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? stock = freezed,
  }) {
    return _then(_$_Wishlist(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bookTitle: bookTitle == freezed
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wishlist implements _Wishlist {
  _$_Wishlist(
      {required this.id,
      required this.bookTitle,
      required this.image,
      required this.price,
      required this.stock});

  factory _$_Wishlist.fromJson(Map<String, dynamic> json) =>
      _$$_WishlistFromJson(json);

  @override
  final int id;
  @override
  final String bookTitle;
  @override
  final String image;
  @override
  final double price;
  @override
  final int stock;

  @override
  String toString() {
    return 'Wishlist(id: $id, bookTitle: $bookTitle, image: $image, price: $price, stock: $stock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wishlist &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.bookTitle, bookTitle) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.stock, stock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(bookTitle),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(stock));

  @JsonKey(ignore: true)
  @override
  _$$_WishlistCopyWith<_$_Wishlist> get copyWith =>
      __$$_WishlistCopyWithImpl<_$_Wishlist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishlistToJson(
      this,
    );
  }
}

abstract class _Wishlist implements Wishlist {
  factory _Wishlist(
      {required final int id,
      required final String bookTitle,
      required final String image,
      required final double price,
      required final int stock}) = _$_Wishlist;

  factory _Wishlist.fromJson(Map<String, dynamic> json) = _$_Wishlist.fromJson;

  @override
  int get id;
  @override
  String get bookTitle;
  @override
  String get image;
  @override
  double get price;
  @override
  int get stock;
  @override
  @JsonKey(ignore: true)
  _$$_WishlistCopyWith<_$_Wishlist> get copyWith =>
      throw _privateConstructorUsedError;
}
