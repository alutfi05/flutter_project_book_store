import 'package:flutter_project_book_store/models/cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    Cart? cartModel,
    @Default(false) bool isLoading,
  }) = _CartState;
}
