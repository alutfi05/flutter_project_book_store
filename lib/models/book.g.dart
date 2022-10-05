// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      bookTitle: json['bookTitle'] as String,
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      bookShortDescription: json['bookShortDescription'] as String,
      bookSynopsis: json['bookSynopsis'] as String,
      bookPrice: (json['bookPrice'] as num).toDouble(),
      bookSalePrice: (json['bookSalePrice'] as num).toDouble(),
      bookImage: json['bookImage'] as String,
      bookType: json['bookType'] as String,
      stockStatus: json['stockStatus'] as String,
      relatedBooks: (json['relatedBooks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bookId: json['bookId'] as String,
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'bookTitle': instance.bookTitle,
      'category': instance.category,
      'bookShortDescription': instance.bookShortDescription,
      'bookSynopsis': instance.bookSynopsis,
      'bookPrice': instance.bookPrice,
      'bookSalePrice': instance.bookSalePrice,
      'bookImage': instance.bookImage,
      'bookType': instance.bookType,
      'stockStatus': instance.stockStatus,
      'relatedBooks': instance.relatedBooks,
      'bookId': instance.bookId,
    };
