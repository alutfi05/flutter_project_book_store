// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_payment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderPaymentState {
  OrderPayment? get orderPaymentResponseModel =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderPaymentStateCopyWith<OrderPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPaymentStateCopyWith<$Res> {
  factory $OrderPaymentStateCopyWith(
          OrderPaymentState value, $Res Function(OrderPaymentState) then) =
      _$OrderPaymentStateCopyWithImpl<$Res>;
  $Res call(
      {OrderPayment? orderPaymentResponseModel,
      bool isLoading,
      bool isSuccess,
      String message});

  $OrderPaymentCopyWith<$Res>? get orderPaymentResponseModel;
}

/// @nodoc
class _$OrderPaymentStateCopyWithImpl<$Res>
    implements $OrderPaymentStateCopyWith<$Res> {
  _$OrderPaymentStateCopyWithImpl(this._value, this._then);

  final OrderPaymentState _value;
  // ignore: unused_field
  final $Res Function(OrderPaymentState) _then;

  @override
  $Res call({
    Object? orderPaymentResponseModel = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      orderPaymentResponseModel: orderPaymentResponseModel == freezed
          ? _value.orderPaymentResponseModel
          : orderPaymentResponseModel // ignore: cast_nullable_to_non_nullable
              as OrderPayment?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $OrderPaymentCopyWith<$Res>? get orderPaymentResponseModel {
    if (_value.orderPaymentResponseModel == null) {
      return null;
    }

    return $OrderPaymentCopyWith<$Res>(_value.orderPaymentResponseModel!,
        (value) {
      return _then(_value.copyWith(orderPaymentResponseModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderPaymentStateCopyWith<$Res>
    implements $OrderPaymentStateCopyWith<$Res> {
  factory _$$_OrderPaymentStateCopyWith(_$_OrderPaymentState value,
          $Res Function(_$_OrderPaymentState) then) =
      __$$_OrderPaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {OrderPayment? orderPaymentResponseModel,
      bool isLoading,
      bool isSuccess,
      String message});

  @override
  $OrderPaymentCopyWith<$Res>? get orderPaymentResponseModel;
}

/// @nodoc
class __$$_OrderPaymentStateCopyWithImpl<$Res>
    extends _$OrderPaymentStateCopyWithImpl<$Res>
    implements _$$_OrderPaymentStateCopyWith<$Res> {
  __$$_OrderPaymentStateCopyWithImpl(
      _$_OrderPaymentState _value, $Res Function(_$_OrderPaymentState) _then)
      : super(_value, (v) => _then(v as _$_OrderPaymentState));

  @override
  _$_OrderPaymentState get _value => super._value as _$_OrderPaymentState;

  @override
  $Res call({
    Object? orderPaymentResponseModel = freezed,
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_OrderPaymentState(
      orderPaymentResponseModel: orderPaymentResponseModel == freezed
          ? _value.orderPaymentResponseModel
          : orderPaymentResponseModel // ignore: cast_nullable_to_non_nullable
              as OrderPayment?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OrderPaymentState implements _OrderPaymentState {
  const _$_OrderPaymentState(
      {this.orderPaymentResponseModel,
      this.isLoading = false,
      this.isSuccess = false,
      this.message = ""});

  @override
  final OrderPayment? orderPaymentResponseModel;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'OrderPaymentState(orderPaymentResponseModel: $orderPaymentResponseModel, isLoading: $isLoading, isSuccess: $isSuccess, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderPaymentState &&
            const DeepCollectionEquality().equals(
                other.orderPaymentResponseModel, orderPaymentResponseModel) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderPaymentResponseModel),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_OrderPaymentStateCopyWith<_$_OrderPaymentState> get copyWith =>
      __$$_OrderPaymentStateCopyWithImpl<_$_OrderPaymentState>(
          this, _$identity);
}

abstract class _OrderPaymentState implements OrderPaymentState {
  const factory _OrderPaymentState(
      {final OrderPayment? orderPaymentResponseModel,
      final bool isLoading,
      final bool isSuccess,
      final String message}) = _$_OrderPaymentState;

  @override
  OrderPayment? get orderPaymentResponseModel;
  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_OrderPaymentStateCopyWith<_$_OrderPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
