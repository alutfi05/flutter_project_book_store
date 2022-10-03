import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_sort.freezed.dart';

@freezed
class BookSortModel with _$BookSortModel {
  factory BookSortModel({
    String? label,
    String? value,
  }) = _BookSortModel;
}
