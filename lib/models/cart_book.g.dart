// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartBook _$$_CartBookFromJson(Map<String, dynamic> json) => _$_CartBook(
      qty: (json['qty'] as num).toDouble(),
      book: Book.fromJson(json['book'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartBookToJson(_$_CartBook instance) =>
    <String, dynamic>{
      'qty': instance.qty,
      'book': instance.book,
    };
