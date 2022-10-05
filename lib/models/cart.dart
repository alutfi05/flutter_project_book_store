import 'package:freezed_annotation/freezed_annotation.dart';
import './cart_book.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
abstract class Cart with _$Cart {
  factory Cart({
    required String userId,
    required List<CartBook> books,
    required String cartId,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

extension CartExt on Cart {
  double get grandTotal {
    return books.map((e) => e.book.bookPrice * e.qty).fold(0, (p, c) => p + c);
  }
}
