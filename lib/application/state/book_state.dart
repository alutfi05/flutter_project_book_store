import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/book.dart';

part 'book_state.freezed.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState({
    @Default(<Book>[]) List<Book> books,
    @Default(true) bool hasNext,
    @Default(false) bool isLoading,
  }) = _BooksState;
}
