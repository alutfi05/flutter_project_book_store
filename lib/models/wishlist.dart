import 'package:freezed_annotation/freezed_annotation.dart';

part 'wishlist.freezed.dart';
part 'wishlist.g.dart';

class WishlistModel {
  late int id;
  late String bookTitle;
  late double price;
  late String image;
  late int stock;

  WishlistModel({
    required this.id,
    required this.bookTitle,
    required this.image,
    required this.price,
    required this.stock,
  });
}

List<WishlistModel> wishListData = [];

List<Wishlist> wishlistFromJson(dynamic str) =>
    List<Wishlist>.from((str).map((x) => Wishlist.fromJson(x)));

@freezed
abstract class Wishlist with _$Wishlist {
  factory Wishlist({
    required int id,
    required String bookTitle,
    required String image,
    required double price,
    required int stock,
  }) = _Wishlist;

  factory Wishlist.fromJson(Map<String, dynamic> json) =>
      _$WishlistFromJson(json);
}
