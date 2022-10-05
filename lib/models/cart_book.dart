import 'package:flutter_project_book_store/models/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_book.freezed.dart';
part 'cart_book.g.dart';

@freezed
abstract class CartBook with _$CartBook {
  factory CartBook({
    required double qty,
    required Book book,
  }) = _CartBook;

  factory CartBook.fromJson(Map<String, dynamic> json) =>
      _$CartBookFromJson(json);
}
