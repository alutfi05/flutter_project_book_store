import 'package:flutter_project_book_store/api/api_service.dart';
import 'package:flutter_project_book_store/models/pagination.dart';
import 'package:flutter_project_book_store/models/category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoriesProvider =
    FutureProvider.family<List<Category>?, PaginationModel>(
  (ref, paginationModel) {
    final apiRepository = ref.watch(apiService);

    return apiRepository.getCategories(
        paginationModel.page, paginationModel.pageSize);
  },
);
