// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => _$_Cart(
      userId: json['userId'] as String,
      books: (json['books'] as List<dynamic>)
          .map((e) => CartBook.fromJson(e as Map<String, dynamic>))
          .toList(),
      cartId: json['cartId'] as String,
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'userId': instance.userId,
      'books': instance.books,
      'cartId': instance.cartId,
    };
