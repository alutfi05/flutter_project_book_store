import 'package:flutter_project_book_store/api/api_service.dart';
import 'package:flutter_project_book_store/application/notifier/book_filter_notifier.dart';
import 'package:flutter_project_book_store/application/notifier/books_notifier.dart';
import 'package:flutter_project_book_store/application/notifier/cart_notifier.dart';
import 'package:flutter_project_book_store/application/notifier/order_payment_notifier.dart';
import 'package:flutter_project_book_store/application/state/book_state.dart';
import 'package:flutter_project_book_store/application/state/cart_state.dart';
import 'package:flutter_project_book_store/application/state/order_payment_state.dart';
import 'package:flutter_project_book_store/models/book.dart';
import 'package:flutter_project_book_store/models/slider.dart';
import 'package:flutter_project_book_store/models/pagination.dart';
import 'package:flutter_project_book_store/models/category.dart';
import './models/book_filter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesProvider =
    FutureProvider.family<List<Category>?, PaginationModel>(
  (ref, paginationModel) {
    final apiRepository = ref.watch(apiService);

    return apiRepository.getCategories(
        paginationModel.page, paginationModel.pageSize);
  },
);

final homeBookProvider = FutureProvider.family<List<Book>?, BookFilterModel>(
  (ref, bookFilterModel) {
    final apiRepository = ref.watch(apiService);

    return apiRepository.getBooks(bookFilterModel);
  },
);

final booksFilterProvider =
    StateNotifierProvider<BooksFilterNotifier, BookFilterModel>(
  (ref) => BooksFilterNotifier(),
);

final booksNotifierProvider = StateNotifierProvider<BooksNotifier, BooksState>(
  (ref) => BooksNotifier(
    ref.watch(apiService),
    ref.watch(booksFilterProvider),
  ),
);

final slidersProvider =
    FutureProvider.family<List<SliderModel>?, PaginationModel>(
  (ref, paginationModel) {
    final sliderRepo = ref.watch(apiService);
    return sliderRepo.getSliders(
        paginationModel.page, paginationModel.pageSize);
  },
);

final bookDetailsProvider = FutureProvider.family<Book?, String>(
  (ref, bookId) {
    final apiRepository = ref.watch(apiService);
    return apiRepository.getBookDetails(bookId);
  },
);

final relatedBooksProvider =
    FutureProvider.family<List<Book>?, BookFilterModel>(
  (ref, bookFilterModel) {
    final apiRepository = ref.watch(apiService);
    return apiRepository.getBooks(bookFilterModel);
  },
);

final cartItemsProvider = StateNotifierProvider<CartNotifier, CartState>(
  (ref) => CartNotifier(
    ref.watch(apiService),
  ),
);

final orderPaymentProvider =
    StateNotifierProvider<OrderPaymentNotifier, OrderPaymentState>(
  (ref) => OrderPaymentNotifier(
    ref.watch(apiService),
  ),
);
