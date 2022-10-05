import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/config.dart';
import 'package:flutter_project_book_store/models/cart_book.dart';
import 'package:flutter_project_book_store/providers.dart';
import 'package:flutter_project_book_store/widgets/widget_cart_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/cart.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: const Color(0xff1bba85),
      ),
      bottomNavigationBar: _checkoutBottomNavbar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: _cartList(ref),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItems(List<CartBook> cartBooks, WidgetRef ref) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: cartBooks.length,
      itemBuilder: (context, index) {
        return CartItemWidget(
          model: cartBooks[index],
          onQtyUpdate: (CartBook model, qty, type) {
            final cartViewModel = ref.watch(cartItemsProvider.notifier);

            cartViewModel.updateQty(model.book.bookId, qty, type);
          },
          onItemRemove: (CartBook model) {
            final cartViewModel = ref.watch(cartItemsProvider.notifier);

            cartViewModel.removeCartItem(model.book.bookId, model.qty);
          },
        );
      },
    );
  }

  Widget _cartList(WidgetRef ref) {
    final cartState = ref.watch(cartItemsProvider);

    if (cartState.cartModel == null) {
      return const LinearProgressIndicator();
    }

    if (cartState.cartModel!.books.isEmpty) {
      return const Center(
        child: Text('Cart Empty'),
      );
    }

    return _buildCartItems(cartState.cartModel!.books, ref);
  }
}

class _checkoutBottomNavbar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartProvider = ref.watch(cartItemsProvider);

    if (cartProvider.cartModel != null) {
      return cartProvider.cartModel!.books.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff1bba85),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total: ${Config.currency}${cartProvider.cartModel!.grandTotal.toString()}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Proceed to Checkout",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          : const SizedBox();
    }

    return const SizedBox();
  }
}
