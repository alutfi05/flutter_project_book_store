import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/models/book.dart';
import 'package:flutter_project_book_store/models/book_filter.dart';
import 'package:flutter_project_book_store/models/pagination.dart';
import 'package:flutter_project_book_store/providers.dart';
import 'package:flutter_project_book_store/utils/const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../components/book_card.dart';

class HomeBooksWidget extends ConsumerWidget {
  const HomeBooksWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // List<Book> list = List<Book>.empty(growable: true);

    // list.add(
    //   Book(
    //       bookTitle: "Test Book",
    //       category: Category(
    //           categoryName: "Kids",
    //           categoryImage: "/uploads/categories/1664691919947-kids.png",
    //           categoryId: "63392ecf2659bc1e7529d13a"),
    //       bookShortDescription:
    //           "Author: Lutfi, Publisher: PT. Lutfi, Publication Year: 03-10-2022",
    //       bookPrice: 50000,
    //       bookSalePrice: 45000,
    //       bookImage:
    //           "/uploads/books/1664767248662-Cover_Depan_Jujutsu_Kaisen_04.jpg",
    //       bookType: "simple",
    //       stockStatus: "IN",
    //       bookId: "633a55101c382100a6570a94"),
    // );
    return Container(
      color: const Color(0xffF4F7FA),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 15),
                child: Text(
                  "Recently Books Added",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Container(
            color: AppConstants.backgroundColor,
            padding: const EdgeInsets.all(5),
            child: _booksList(ref),
          )
        ],
      ),
    );
  }

  Widget _booksList(WidgetRef ref) {
    final books = ref.watch(
      homeBookProvider(
        BookFilterModel(
          paginationModel: PaginationModel(page: 1, pageSize: 10),
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
