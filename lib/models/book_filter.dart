import 'package:flutter_project_book_store/models/pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_filter.freezed.dart';

@freezed
abstract class BookFilterModel with _$BookFilterModel {
  factory BookFilterModel({
    required PaginationModel paginationModel,
    String? categoryId,
    String? sortBy,
  }) = _BookFilterModel;
}
