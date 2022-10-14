import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/models/book_filter.dart';
import 'package:flutter_project_book_store/models/category.dart';
import 'package:flutter_project_book_store/models/pagination.dart';
import 'package:flutter_project_book_store/providers.dart';
import 'package:flutter_project_book_store/utils/const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeCategoriesWidget extends ConsumerWidget {
  const HomeCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "All Categories",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          child: _categoriesList(ref),
        )
      ],
    );
  }

  Widget _categoriesList(WidgetRef ref) {
    final categories = ref.watch(
      categoriesProvider(
        PaginationModel(page: 1, pageSize: 10),
      ),
    );

    return categories.when(
      data: (list) {
        return _buildCategoryList(list!, ref);
      },
      error: (_, __) => const Center(
        child: Text("Error"),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildCategoryList(List<Category> categories, WidgetRef ref) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 2,
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        childAspectRatio: 0.9,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        var data = categories[index];
        return GestureDetector(
          onTap: () {
            BookFilterModel filterModel = BookFilterModel(
              paginationModel: PaginationModel(page: 1, pageSize: 10),
              categoryId: data.categoryId,
            );

            ref.read(booksFilterProvider.notifier).setBookFilter(filterModel);
            ref.read(booksNotifierProvider.notifier).getBooks();

            Navigator.of(context).pushNamed(
              "/books",
              arguments: {
                'categoryId': data.categoryId,
                'categoryName': data.categoryName,
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: Image.network(
                    data.fullImagePath,
                    height: 50,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      data.categoryName,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // const Icon(
                    //   Icons.keyboard_arrow_right,
                    //   size: 13,
                    // )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
