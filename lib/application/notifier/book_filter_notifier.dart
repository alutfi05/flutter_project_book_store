import 'package:flutter_project_book_store/models/book_filter.dart';
import 'package:flutter_project_book_store/models/pagination.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BooksFilterNotifier extends StateNotifier<BookFilterModel> {
  BooksFilterNotifier()
      : super(
          BookFilterModel(
            paginationModel: PaginationModel(
              page: 0,
              pageSize: 10,
            ),
          ),
        );

  void setBookFilter(BookFilterModel model) {
    state = model;
  }
}
