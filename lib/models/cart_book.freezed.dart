// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartBook _$CartBookFromJson(Map<String, dynamic> json) {
  return _CartBook.fromJson(json);
}

/// @nodoc
mixin _$CartBook {
  double get qty => throw _privateConstructorUsedError;
  Book get book => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartBookCopyWith<CartBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartBookCopyWith<$Res> {
  factory $CartBookCopyWith(CartBook value, $Res Function(CartBook) then) =
      _$CartBookCopyWithImpl<$Res>;
  $Res call({double qty, Book book});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class _$CartBookCopyWithImpl<$Res> implements $CartBookCopyWith<$Res> {
  _$CartBookCopyWithImpl(this._value, this._then);

  final CartBook _value;
  // ignore: unused_field
  final $Res Function(CartBook) _then;

  @override
  $Res call({
    Object? qty = freezed,
    Object? book = freezed,
  }) {
    return _then(_value.copyWith(
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      book: book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }

  @override
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc
abstract class _$$_CartBookCopyWith<$Res> implements $CartBookCopyWith<$Res> {
  factory _$$_CartBookCopyWith(
          _$_CartBook value, $Res Function(_$_CartBook) then) =
      __$$_CartBookCopyWithImpl<$Res>;
  @override
  $Res call({double qty, Book book});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$_CartBookCopyWithImpl<$Res> extends _$CartBookCopyWithImpl<$Res>
    implements _$$_CartBookCopyWith<$Res> {
  __$$_CartBookCopyWithImpl(
      _$_CartBook _value, $Res Function(_$_CartBook) _then)
      : super(_value, (v) => _then(v as _$_CartBook));

  @override
  _$_CartBook get _value => super._value as _$_CartBook;

  @override
  $Res call({
    Object? qty = freezed,
    Object? book = freezed,
  }) {
    return _then(_$_CartBook(
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      book: book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartBook implements _CartBook {
  _$_CartBook({required this.qty, required this.book});

  factory _$_CartBook.fromJson(Map<String, dynamic> json) =>
      _$$_CartBookFromJson(json);

  @override
  final double qty;
  @override
  final Book book;

  @override
  String toString() {
    return 'CartBook(qty: $qty, book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartBook &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.book, book));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(book));

  @JsonKey(ignore: true)
  @override
  _$$_CartBookCopyWith<_$_CartBook> get copyWith =>
      __$$_CartBookCopyWithImpl<_$_CartBook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartBookToJson(
      this,
    );
  }
}

abstract class _CartBook implements CartBook {
  factory _CartBook({required final double qty, required final Book book}) =
      _$_CartBook;

  factory _CartBook.fromJson(Map<String, dynamic> json) = _$_CartBook.fromJson;

  @override
  double get qty;
  @override
  Book get book;
  @override
  @JsonKey(ignore: true)
  _$$_CartBookCopyWith<_$_CartBook> get copyWith =>
      throw _privateConstructorUsedError;
}
