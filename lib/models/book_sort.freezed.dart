// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_sort.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookSortModel {
  String? get label => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookSortModelCopyWith<BookSortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookSortModelCopyWith<$Res> {
  factory $BookSortModelCopyWith(
          BookSortModel value, $Res Function(BookSortModel) then) =
      _$BookSortModelCopyWithImpl<$Res>;
  $Res call({String? label, String? value});
}

/// @nodoc
class _$BookSortModelCopyWithImpl<$Res>
    implements $BookSortModelCopyWith<$Res> {
  _$BookSortModelCopyWithImpl(this._value, this._then);

  final BookSortModel _value;
  // ignore: unused_field
  final $Res Function(BookSortModel) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BookSortModelCopyWith<$Res>
    implements $BookSortModelCopyWith<$Res> {
  factory _$$_BookSortModelCopyWith(
          _$_BookSortModel value, $Res Function(_$_BookSortModel) then) =
      __$$_BookSortModelCopyWithImpl<$Res>;
  @override
  $Res call({String? label, String? value});
}

/// @nodoc
class __$$_BookSortModelCopyWithImpl<$Res>
    extends _$BookSortModelCopyWithImpl<$Res>
    implements _$$_BookSortModelCopyWith<$Res> {
  __$$_BookSortModelCopyWithImpl(
      _$_BookSortModel _value, $Res Function(_$_BookSortModel) _then)
      : super(_value, (v) => _then(v as _$_BookSortModel));

  @override
  _$_BookSortModel get _value => super._value as _$_BookSortModel;

  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_BookSortModel(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BookSortModel implements _BookSortModel {
  _$_BookSortModel({this.label, this.value});

  @override
  final String? label;
  @override
  final String? value;

  @override
  String toString() {
    return 'BookSortModel(label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookSortModel &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_BookSortModelCopyWith<_$_BookSortModel> get copyWith =>
      __$$_BookSortModelCopyWithImpl<_$_BookSortModel>(this, _$identity);
}

abstract class _BookSortModel implements BookSortModel {
  factory _BookSortModel({final String? label, final String? value}) =
      _$_BookSortModel;

  @override
  String? get label;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_BookSortModelCopyWith<_$_BookSortModel> get copyWith =>
      throw _privateConstructorUsedError;
}
