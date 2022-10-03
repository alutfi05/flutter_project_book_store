// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  String get bookTitle => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  String get bookShortDescription => throw _privateConstructorUsedError;
  double get bookPrice => throw _privateConstructorUsedError;
  double get bookSalePrice => throw _privateConstructorUsedError;
  String get bookImage => throw _privateConstructorUsedError;
  String get bookType => throw _privateConstructorUsedError;
  String get stockStatus => throw _privateConstructorUsedError;
  String get bookId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {String bookTitle,
      Category category,
      String bookShortDescription,
      double bookPrice,
      double bookSalePrice,
      String bookImage,
      String bookType,
      String stockStatus,
      String bookId});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? bookTitle = freezed,
    Object? category = freezed,
    Object? bookShortDescription = freezed,
    Object? bookPrice = freezed,
    Object? bookSalePrice = freezed,
    Object? bookImage = freezed,
    Object? bookType = freezed,
    Object? stockStatus = freezed,
    Object? bookId = freezed,
  }) {
    return _then(_value.copyWith(
      bookTitle: bookTitle == freezed
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      bookShortDescription: bookShortDescription == freezed
          ? _value.bookShortDescription
          : bookShortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      bookPrice: bookPrice == freezed
          ? _value.bookPrice
          : bookPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bookSalePrice: bookSalePrice == freezed
          ? _value.bookSalePrice
          : bookSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      bookImage: bookImage == freezed
          ? _value.bookImage
          : bookImage // ignore: cast_nullable_to_non_nullable
              as String,
      bookType: bookType == freezed
          ? _value.bookType
          : bookType // ignore: cast_nullable_to_non_nullable
              as String,
      stockStatus: stockStatus == freezed
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: bookId == freezed
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$$_BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$_BookCopyWith(_$_Book value, $Res Function(_$_Book) then) =
      __$$_BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {String bookTitle,
      Category category,
      String bookShortDescription,
      double bookPrice,
      double bookSalePrice,
      String bookImage,
      String bookType,
      String stockStatus,
      String bookId});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$_BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$$_BookCopyWith<$Res> {
  __$$_BookCopyWithImpl(_$_Book _value, $Res Function(_$_Book) _then)
      : super(_value, (v) => _then(v as _$_Book));

  @override
  _$_Book get _value => super._value as _$_Book;

  @override
  $Res call({
    Object? bookTitle = freezed,
    Object? category = freezed,
    Object? bookShortDescription = freezed,
    Object? bookPrice = freezed,
    Object? bookSalePrice = freezed,
    Object? bookImage = freezed,
    Object? bookType = freezed,
    Object? stockStatus = freezed,
    Object? bookId = freezed,
  }) {
    return _then(_$_Book(
      bookTitle: bookTitle == freezed
          ? _value.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      bookShortDescription: bookShortDescription == freezed
          ? _value.bookShortDescription
          : bookShortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      bookPrice: bookPrice == freezed
          ? _value.bookPrice
          : bookPrice // ignore: cast_nullable_to_non_nullable
              as double,
      bookSalePrice: bookSalePrice == freezed
          ? _value.bookSalePrice
          : bookSalePrice // ignore: cast_nullable_to_non_nullable
              as double,
      bookImage: bookImage == freezed
          ? _value.bookImage
          : bookImage // ignore: cast_nullable_to_non_nullable
              as String,
      bookType: bookType == freezed
          ? _value.bookType
          : bookType // ignore: cast_nullable_to_non_nullable
              as String,
      stockStatus: stockStatus == freezed
          ? _value.stockStatus
          : stockStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: bookId == freezed
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book implements _Book {
  _$_Book(
      {required this.bookTitle,
      required this.category,
      required this.bookShortDescription,
      required this.bookPrice,
      required this.bookSalePrice,
      required this.bookImage,
      required this.bookType,
      required this.stockStatus,
      required this.bookId});

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  final String bookTitle;
  @override
  final Category category;
  @override
  final String bookShortDescription;
  @override
  final double bookPrice;
  @override
  final double bookSalePrice;
  @override
  final String bookImage;
  @override
  final String bookType;
  @override
  final String stockStatus;
  @override
  final String bookId;

  @override
  String toString() {
    return 'Book(bookTitle: $bookTitle, category: $category, bookShortDescription: $bookShortDescription, bookPrice: $bookPrice, bookSalePrice: $bookSalePrice, bookImage: $bookImage, bookType: $bookType, stockStatus: $stockStatus, bookId: $bookId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Book &&
            const DeepCollectionEquality().equals(other.bookTitle, bookTitle) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.bookShortDescription, bookShortDescription) &&
            const DeepCollectionEquality().equals(other.bookPrice, bookPrice) &&
            const DeepCollectionEquality()
                .equals(other.bookSalePrice, bookSalePrice) &&
            const DeepCollectionEquality().equals(other.bookImage, bookImage) &&
            const DeepCollectionEquality().equals(other.bookType, bookType) &&
            const DeepCollectionEquality()
                .equals(other.stockStatus, stockStatus) &&
            const DeepCollectionEquality().equals(other.bookId, bookId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookTitle),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(bookShortDescription),
      const DeepCollectionEquality().hash(bookPrice),
      const DeepCollectionEquality().hash(bookSalePrice),
      const DeepCollectionEquality().hash(bookImage),
      const DeepCollectionEquality().hash(bookType),
      const DeepCollectionEquality().hash(stockStatus),
      const DeepCollectionEquality().hash(bookId));

  @JsonKey(ignore: true)
  @override
  _$$_BookCopyWith<_$_Book> get copyWith =>
      __$$_BookCopyWithImpl<_$_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  factory _Book(
      {required final String bookTitle,
      required final Category category,
      required final String bookShortDescription,
      required final double bookPrice,
      required final double bookSalePrice,
      required final String bookImage,
      required final String bookType,
      required final String stockStatus,
      required final String bookId}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  String get bookTitle;
  @override
  Category get category;
  @override
  String get bookShortDescription;
  @override
  double get bookPrice;
  @override
  double get bookSalePrice;
  @override
  String get bookImage;
  @override
  String get bookType;
  @override
  String get stockStatus;
  @override
  String get bookId;
  @override
  @JsonKey(ignore: true)
  _$$_BookCopyWith<_$_Book> get copyWith => throw _privateConstructorUsedError;
}
