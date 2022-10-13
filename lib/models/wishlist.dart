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

List<WishlistModel> wishListData = [
  WishlistModel(
    id: 1,
    bookTitle: 'One Piece',
    image: "",
    price: 200000,
    stock: 13,
  ),
  WishlistModel(
    id: 2,
    bookTitle: 'One Piece',
    image: "",
    price: 200000,
    stock: 13,
  ),
  WishlistModel(
    id: 3,
    bookTitle: 'One Piece',
    image: "",
    price: 200000,
    stock: 13,
  ),
  WishlistModel(
    id: 4,
    bookTitle: 'One Piece',
    image: "",
    price: 200000,
    stock: 13,
  ),
  WishlistModel(
    id: 5,
    bookTitle: 'One Piece',
    image: "",
    price: 200000,
    stock: 13,
  ),
  WishlistModel(
    id: 6,
    bookTitle: 'One Piece',
    image: "",
    price: 200000,
    stock: 13,
  ),
  WishlistModel(
    id: 7,
    bookTitle: 'One Piece',
    image: "",
    price: 200000,
    stock: 13,
  ),
  WishlistModel(
    id: 8,
    bookTitle: 'One Piece',
    image: "",
    price: 200000,
    stock: 13,
  ),
];

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
