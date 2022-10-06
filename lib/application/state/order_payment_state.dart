import 'package:flutter_project_book_store/models/order_payment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_payment_state.freezed.dart';

@freezed
class OrderPaymentState with _$OrderPaymentState {
  const factory OrderPaymentState({
    OrderPayment? orderPaymentResponseModel,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default("") String message,
  }) = _OrderPaymentState;
}
