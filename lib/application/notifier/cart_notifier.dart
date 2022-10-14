import 'dart:convert';

import 'package:flutter_project_book_store/api/api_service.dart';
import 'package:flutter_project_book_store/application/state/cart_state.dart';
import 'package:flutter_project_book_store/models/cart_book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends StateNotifier<CartState> {
  final APIService _apiService;

  CartNotifier(this._apiService) : super(const CartState()) {
    getCartItems();
  }

  Future<void> getCartItems() async {
    state = state.copyWith(isLoading: true);

    final cartData = await _apiService.getCart();

    state = state.copyWith(cartModel: cartData);
    state = state.copyWith(isLoading: false);
  }

  Future<void> addCartItem(bookId, qty) async {
    await _apiService.addCartItem(bookId, qty);

    await getCartItems();
  }

  Future<void> removeCartItem(bookId, qty) async {
    await _apiService.removeCartItem(bookId, qty);

    var isCartItemExist = state.cartModel!.books
        .firstWhere((element) => element.book.bookId == bookId);

    var updatedItems = state.cartModel!;

    updatedItems.books.remove(isCartItemExist);

    state = state.copyWith(cartModel: updatedItems);
  }

  Future<void> updateQty(bookId, qty, type) async {
    var cartItem = state.cartModel!.books
        .firstWhere((element) => element.book.bookId == bookId);

    var updatedItems = state.cartModel!;

    if (type == "-") {
      await _apiService.removeCartItem(bookId, 1);

      if (cartItem.qty >= 1) {
        CartBook cartBook = CartBook(
          qty: cartItem.qty - 1,
          book: cartItem.book,
        );

        updatedItems.books.remove(cartItem);
        updatedItems.books.add(cartBook);
      } else {
        updatedItems.books.remove(cartItem);
      }
    } else {
      await _apiService.addCartItem(bookId, 1);

      CartBook cartBook = CartBook(
        qty: cartItem.qty + 1,
        book: cartItem.book,
      );

      updatedItems.books.remove(cartItem);
      updatedItems.books.add(cartBook);
    }

    state = state.copyWith(cartModel: updatedItems);
  }
}
