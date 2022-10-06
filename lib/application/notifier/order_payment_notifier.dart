import 'package:flutter_project_book_store/api/api_service.dart';
import 'package:flutter_project_book_store/application/state/order_payment_state.dart';
import 'package:flutter_project_book_store/models/order_payment.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class OrderPaymentNotifier extends StateNotifier<OrderPaymentState> {
  final APIService _apiService;

  OrderPaymentNotifier(this._apiService) : super(const OrderPaymentState());

  Future<void> processPayment(
    cardHolderName,
    cardNumber,
    cardExp,
    cardCVC,
    amount,
  ) async {
    state = state.copyWith(isLoading: true);

    var cardEx = cardExp.toString().split("/");

    final orderPaymentResData = await _apiService.processPayment(
      cardHolderName,
      cardNumber,
      cardEx[0],
      cardEx[1],
      cardCVC,
      amount,
    );

    state = state.copyWith(message: orderPaymentResData["message"]);
    state = state.copyWith(isSuccess: false);

    if (orderPaymentResData["data"] != null) {
      OrderPayment orderPayment = orderPaymentResData["data"] as OrderPayment;

      state = state.copyWith(orderPaymentResponseModel: orderPayment);

      final stripeResponse = await Stripe.instance.confirmPayment(
        orderPayment.client_secret,
        PaymentMethodParams.cardFromMethodId(
          paymentMethodData: PaymentMethodDataCardFromMethod(
            paymentMethodId: orderPayment.cardId,
          ),
        ),
      );

      if (stripeResponse.status == PaymentIntentsStatus.Succeeded) {
        var response = await _apiService.updateOrder(
          orderPayment.orderId,
          stripeResponse.id,
        );

        if (response!) {
          state = state.copyWith(isSuccess: true);
        }
      }
    }

    state = state.copyWith(isLoading: false);
  }
}
