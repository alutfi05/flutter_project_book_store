import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/components/book_card.dart';
import 'package:flutter_project_book_store/models/book_filter.dart';
import 'package:flutter_project_book_store/models/pagination.dart';
import 'package:flutter_project_book_store/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/book.dart';

class RelatedBooksWidget extends ConsumerWidget {
  const RelatedBooksWidget(this.relatedBooks, {Key? key}) : super(key: key);

  final List<String> relatedBooks;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(
        children: [
          Text(
            "Related Book",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Visibility(
            child: _bookList(ref),
            visible: relatedBooks.isNotEmpty,
          )
        ],
      ),
    );
  }

  Widget _bookList(WidgetRef ref) {
    final books = ref.watch(
      relatedBooksProvider(
        BookFilterModel(
          paginationModel: PaginationModel(page: 1, pageSize: 10),
          bookIds: relatedBooks,
        ),
      ),
    );

    return books.when(
      data: (list) {
        return _buildBookList(list!);
      },
      error: (_, __) => const Center(
        child: Text("Error"),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildBookList(List<Book> books) {
    return Container(
      height: 200,
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          var data = books[index];
          return GestureDetector(
            onTap: () {},
            child: BookCard(
              model: data,
            ),
          );
        },
      ),
    );
  }
}
