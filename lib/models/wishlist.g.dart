// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wishlist _$$_WishlistFromJson(Map<String, dynamic> json) => _$_Wishlist(
      id: json['id'] as int,
      bookTitle: json['bookTitle'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      stock: json['stock'] as int,
    );

Map<String, dynamic> _$$_WishlistToJson(_$_Wishlist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookTitle': instance.bookTitle,
      'image': instance.image,
      'price': instance.price,
      'stock': instance.stock,
    };
