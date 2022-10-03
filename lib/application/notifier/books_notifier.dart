import 'package:flutter_project_book_store/api/api_service.dart';
import 'package:flutter_project_book_store/application/state/book_state.dart';
import 'package:flutter_project_book_store/models/book_filter.dart';
import 'package:flutter_project_book_store/models/pagination.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BooksNotifier extends StateNotifier<BooksState> {
  final APIService _apiService;
  final BookFilterModel _filterModel;

  BooksNotifier(this._apiService, this._filterModel)
      : super(const BooksState());

  int _page = 1;

  Future<void> getBooks() async {
    if (state.isLoading || !state.hasNext) {
      return;
    }

    state = state.copyWith(isLoading: true);
    var filterModel = _filterModel.copyWith(
      paginationModel: PaginationModel(
        page: _page,
        pageSize: 10,
      ),
    );

    final books = await _apiService.getBooks(filterModel);
    final newBooks = [...state.books, ...books!];

    if (books.length % 10 != 0 || books.isEmpty) {
      state = state.copyWith(hasNext: false);
    }

    Future.delayed(const Duration(milliseconds: 1500), () {
      state = state.copyWith(books: newBooks);

      _page++;

      state = state.copyWith(isLoading: false);
    });
  }

  Future<void> refreshBooks() async {
    state = state.copyWith(
      books: [],
      hasNext: true,
    );

    _page = 1;

    await getBooks();
  }
}
