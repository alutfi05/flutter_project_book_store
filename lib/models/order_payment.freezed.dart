// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderPayment _$OrderPaymentFromJson(Map<String, dynamic> json) {
  return _OrderPayment.fromJson(json);
}

/// @nodoc
mixin _$OrderPayment {
  String get stripeCustomerID => throw _privateConstructorUsedError;
  String get cardId => throw _privateConstructorUsedError;
  String get paymentIntentId => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get client_secret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPaymentCopyWith<OrderPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPaymentCopyWith<$Res> {
  factory $OrderPaymentCopyWith(
          OrderPayment value, $Res Function(OrderPayment) then) =
      _$OrderPaymentCopyWithImpl<$Res>;
  $Res call(
      {String stripeCustomerID,
      String cardId,
      String paymentIntentId,
      String orderId,
      String client_secret});
}

/// @nodoc
class _$OrderPaymentCopyWithImpl<$Res> implements $OrderPaymentCopyWith<$Res> {
  _$OrderPaymentCopyWithImpl(this._value, this._then);

  final OrderPayment _value;
  // ignore: unused_field
  final $Res Function(OrderPayment) _then;

  @override
  $Res call({
    Object? stripeCustomerID = freezed,
    Object? cardId = freezed,
    Object? paymentIntentId = freezed,
    Object? orderId = freezed,
    Object? client_secret = freezed,
  }) {
    return _then(_value.copyWith(
      stripeCustomerID: stripeCustomerID == freezed
          ? _value.stripeCustomerID
          : stripeCustomerID // ignore: cast_nullable_to_non_nullable
              as String,
      cardId: cardId == freezed
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntentId: paymentIntentId == freezed
          ? _value.paymentIntentId
          : paymentIntentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      client_secret: client_secret == freezed
          ? _value.client_secret
          : client_secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderPaymentCopyWith<$Res>
    implements $OrderPaymentCopyWith<$Res> {
  factory _$$_OrderPaymentCopyWith(
          _$_OrderPayment value, $Res Function(_$_OrderPayment) then) =
      __$$_OrderPaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stripeCustomerID,
      String cardId,
      String paymentIntentId,
      String orderId,
      String client_secret});
}

/// @nodoc
class __$$_OrderPaymentCopyWithImpl<$Res>
    extends _$OrderPaymentCopyWithImpl<$Res>
    implements _$$_OrderPaymentCopyWith<$Res> {
  __$$_OrderPaymentCopyWithImpl(
      _$_OrderPayment _value, $Res Function(_$_OrderPayment) _then)
      : super(_value, (v) => _then(v as _$_OrderPayment));

  @override
  _$_OrderPayment get _value => super._value as _$_OrderPayment;

  @override
  $Res call({
    Object? stripeCustomerID = freezed,
    Object? cardId = freezed,
    Object? paymentIntentId = freezed,
    Object? orderId = freezed,
    Object? client_secret = freezed,
  }) {
    return _then(_$_OrderPayment(
      stripeCustomerID: stripeCustomerID == freezed
          ? _value.stripeCustomerID
          : stripeCustomerID // ignore: cast_nullable_to_non_nullable
              as String,
      cardId: cardId == freezed
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentIntentId: paymentIntentId == freezed
          ? _value.paymentIntentId
          : paymentIntentId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      client_secret: client_secret == freezed
          ? _value.client_secret
          : client_secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderPayment implements _OrderPayment {
  _$_OrderPayment(
      {required this.stripeCustomerID,
      required this.cardId,
      required this.paymentIntentId,
      required this.orderId,
      required this.client_secret});

  factory _$_OrderPayment.fromJson(Map<String, dynamic> json) =>
      _$$_OrderPaymentFromJson(json);

  @override
  final String stripeCustomerID;
  @override
  final String cardId;
  @override
  final String paymentIntentId;
  @override
  final String orderId;
  @override
  final String client_secret;

  @override
  String toString() {
    return 'OrderPayment(stripeCustomerID: $stripeCustomerID, cardId: $cardId, paymentIntentId: $paymentIntentId, orderId: $orderId, client_secret: $client_secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderPayment &&
            const DeepCollectionEquality()
                .equals(other.stripeCustomerID, stripeCustomerID) &&
            const DeepCollectionEquality().equals(other.cardId, cardId) &&
            const DeepCollectionEquality()
                .equals(other.paymentIntentId, paymentIntentId) &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality()
                .equals(other.client_secret, client_secret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stripeCustomerID),
      const DeepCollectionEquality().hash(cardId),
      const DeepCollectionEquality().hash(paymentIntentId),
      const DeepCollectionEquality().hash(orderId),
      const DeepCollectionEquality().hash(client_secret));

  @JsonKey(ignore: true)
  @override
  _$$_OrderPaymentCopyWith<_$_OrderPayment> get copyWith =>
      __$$_OrderPaymentCopyWithImpl<_$_OrderPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderPaymentToJson(
      this,
    );
  }
}

abstract class _OrderPayment implements OrderPayment {
  factory _OrderPayment(
      {required final String stripeCustomerID,
      required final String cardId,
      required final String paymentIntentId,
      required final String orderId,
      required final String client_secret}) = _$_OrderPayment;

  factory _OrderPayment.fromJson(Map<String, dynamic> json) =
      _$_OrderPayment.fromJson;

  @override
  String get stripeCustomerID;
  @override
  String get cardId;
  @override
  String get paymentIntentId;
  @override
  String get orderId;
  @override
  String get client_secret;
  @override
  @JsonKey(ignore: true)
  _$$_OrderPaymentCopyWith<_$_OrderPayment> get copyWith =>
      throw _privateConstructorUsedError;
}
