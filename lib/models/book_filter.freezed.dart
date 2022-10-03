// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookFilterModel {
  PaginationModel get paginationModel => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookFilterModelCopyWith<BookFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookFilterModelCopyWith<$Res> {
  factory $BookFilterModelCopyWith(
          BookFilterModel value, $Res Function(BookFilterModel) then) =
      _$BookFilterModelCopyWithImpl<$Res>;
  $Res call(
      {PaginationModel paginationModel, String? categoryId, String? sortBy});

  $PaginationModelCopyWith<$Res> get paginationModel;
}

/// @nodoc
class _$BookFilterModelCopyWithImpl<$Res>
    implements $BookFilterModelCopyWith<$Res> {
  _$BookFilterModelCopyWithImpl(this._value, this._then);

  final BookFilterModel _value;
  // ignore: unused_field
  final $Res Function(BookFilterModel) _then;

  @override
  $Res call({
    Object? paginationModel = freezed,
    Object? categoryId = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      paginationModel: paginationModel == freezed
          ? _value.paginationModel
          : paginationModel // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PaginationModelCopyWith<$Res> get paginationModel {
    return $PaginationModelCopyWith<$Res>(_value.paginationModel, (value) {
      return _then(_value.copyWith(paginationModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_BookFilterModelCopyWith<$Res>
    implements $BookFilterModelCopyWith<$Res> {
  factory _$$_BookFilterModelCopyWith(
          _$_BookFilterModel value, $Res Function(_$_BookFilterModel) then) =
      __$$_BookFilterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {PaginationModel paginationModel, String? categoryId, String? sortBy});

  @override
  $PaginationModelCopyWith<$Res> get paginationModel;
}

/// @nodoc
class __$$_BookFilterModelCopyWithImpl<$Res>
    extends _$BookFilterModelCopyWithImpl<$Res>
    implements _$$_BookFilterModelCopyWith<$Res> {
  __$$_BookFilterModelCopyWithImpl(
      _$_BookFilterModel _value, $Res Function(_$_BookFilterModel) _then)
      : super(_value, (v) => _then(v as _$_BookFilterModel));

  @override
  _$_BookFilterModel get _value => super._value as _$_BookFilterModel;

  @override
  $Res call({
    Object? paginationModel = freezed,
    Object? categoryId = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$_BookFilterModel(
      paginationModel: paginationModel == freezed
          ? _value.paginationModel
          : paginationModel // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: sortBy == freezed
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BookFilterModel implements _BookFilterModel {
  _$_BookFilterModel(
      {required this.paginationModel, this.categoryId, this.sortBy});

  @override
  final PaginationModel paginationModel;
  @override
  final String? categoryId;
  @override
  final String? sortBy;

  @override
  String toString() {
    return 'BookFilterModel(paginationModel: $paginationModel, categoryId: $categoryId, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookFilterModel &&
            const DeepCollectionEquality()
                .equals(other.paginationModel, paginationModel) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality().equals(other.sortBy, sortBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(paginationModel),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(sortBy));

  @JsonKey(ignore: true)
  @override
  _$$_BookFilterModelCopyWith<_$_BookFilterModel> get copyWith =>
      __$$_BookFilterModelCopyWithImpl<_$_BookFilterModel>(this, _$identity);
}

abstract class _BookFilterModel implements BookFilterModel {
  factory _BookFilterModel(
      {required final PaginationModel paginationModel,
      final String? categoryId,
      final String? sortBy}) = _$_BookFilterModel;

  @override
  PaginationModel get paginationModel;
  @override
  String? get categoryId;
  @override
  String? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$$_BookFilterModelCopyWith<_$_BookFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
