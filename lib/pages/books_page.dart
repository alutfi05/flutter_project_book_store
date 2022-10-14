import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/components/book_card.dart';
import 'package:flutter_project_book_store/models/book_filter.dart';
import 'package:flutter_project_book_store/models/book_sort.dart';
import 'package:flutter_project_book_store/models/pagination.dart';
import 'package:flutter_project_book_store/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BooksPage extends StatefulWidget {
  String? categoryId;
  String? categoryName;
  BooksPage({super.key, this.categoryId, this.categoryName});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1bba85),
        title: Text(widget.categoryName! ?? ""),
      ),
      body: Container(
        color: Colors.white38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _BookFilters(
              categoryId: widget.categoryId,
              categoryName: widget.categoryName,
            ),
            Flexible(
              flex: 1,
              child: _BookList(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;

    widget.categoryName = arguments['categoryName'];
    widget.categoryId = arguments['categoryId'];

    super.didChangeDependencies();
  }
}

class _BookFilters extends ConsumerWidget {
  final _sortByOptions = [
    BookSortModel(value: "createdAt", label: "Latest"),
    BookSortModel(value: "-bookPrice", label: "Price: High to Low"),
    BookSortModel(value: "bookPrice", label: "Price: Low to High"),
  ];

  _BookFilters({
    this.categoryName,
    this.categoryId,
  });

  final String? categoryName;
  final String? categoryId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterProvider = ref.watch(booksFilterProvider);

    return Container(
      height: 51,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     categoryName!,
          //     style: const TextStyle(
          //       fontWeight: FontWeight.bold,
          //       fontSize: 15,
          //     ),
          //   ),
          // ),
          Container(
            decoration: BoxDecoration(color: Colors.white38),
            child: PopupMenuButton(
              onSelected: (sortBy) {
                BookFilterModel filterModel = BookFilterModel(
                  paginationModel: PaginationModel(page: 0, pageSize: 10),
                  categoryId: filterProvider.categoryId,
                  sortBy: sortBy.toString(),
                );

                ref
                    .read(booksFilterProvider.notifier)
                    .setBookFilter(filterModel);

                ref.read(booksNotifierProvider.notifier).getBooks();
              },
              initialValue: filterProvider.sortBy,
              itemBuilder: (BuildContext context) {
                return _sortByOptions
                    .map(
                      (item) => PopupMenuItem(
                        value: item.value,
                        child: InkWell(
                          child: Text(item.label!),
                        ),
                      ),
                    )
                    .toList();
              },
              icon: const Icon(Icons.filter_list_alt),
            ),
          )
        ],
      ),
    );
  }
}

class _BookList extends ConsumerWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookState = ref.watch(booksNotifierProvider);

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        final booksViewModel = ref.read(booksNotifierProvider.notifier);
        final booksState = ref.watch(booksNotifierProvider);

        if (booksState.hasNext) {
          booksViewModel.getBooks();
        }
      }
    });

    if (bookState.books.isEmpty) {
      if (!bookState.hasNext && !bookState.isLoading) {
        return const Center(
          child: Text("No Books"),
        );
      }

      return const LinearProgressIndicator();
    }

    return RefreshIndicator(
      onRefresh: () async {
        ref.read(booksNotifierProvider.notifier).refreshBooks();
      },
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: GridView.count(
              crossAxisCount: 2,
              controller: _scrollController,
              children: List.generate(bookState.books.length, (index) {
                return BookCard(
                  model: bookState.books[index],
                );
              }),
            ),
          ),
          Visibility(
            visible: bookState.isLoading && bookState.books.isNotEmpty,
            child: const SizedBox(
              height: 35,
              width: 35,
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
