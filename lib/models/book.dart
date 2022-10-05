import 'package:flutter_project_book_store/config.dart';
import 'package:flutter_project_book_store/models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

List<Book> booksFromJson(dynamic str) =>
    List<Book>.from((str).map((x) => Book.fromJson(x)));

@freezed
abstract class Book with _$Book {
  factory Book(
      {required String bookTitle,
      required Category category,
      required String? bookShortDescription,
      required String? bookSynopsis,
      required double bookPrice,
      required double bookSalePrice,
      required String bookImage,
      required String? bookType,
      required String? stockStatus,
      List<String>? relatedBooks,
      required String bookId}) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

extension BookExt on Book {
  String get fullImagePath => Config.imageURL + bookImage;

  int get calculateDiscount {
    double disPercent = 0;

    if (!bookPrice.isNaN) {
      double regularPrice = bookPrice;
      double salePrice = bookSalePrice > 0 ? bookSalePrice : regularPrice;

      double discount = regularPrice - salePrice;
      disPercent = (discount / regularPrice) * 100;
    }

    return disPercent.round();
  }
}
