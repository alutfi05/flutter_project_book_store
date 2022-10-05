import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/components/widget_col_exp.dart';
import 'package:flutter_project_book_store/components/widget_custom_stepper.dart';
import 'package:flutter_project_book_store/models/book.dart';
import 'package:flutter_project_book_store/providers.dart';
import 'package:flutter_project_book_store/widgets/widget_related_books.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../config.dart';

class BookDetailsPage extends ConsumerStatefulWidget {
  const BookDetailsPage({super.key});

  @override
  _BookDetailsPageState createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends ConsumerState<BookDetailsPage> {
  String bookId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Details"),
        backgroundColor: const Color(0xff1bba85),
      ),
      body: SingleChildScrollView(child: _bookDetails(ref)),
    );
  }

  @override
  void didChangeDependencies() {
    final Map? arguments = ModalRoute.of(context)!.settings.arguments as Map;

    if (arguments != null) {
      bookId = arguments["bookId"];
    }

    super.didChangeDependencies();
  }

  Widget _bookDetails(WidgetRef ref) {
    final details = ref.watch(bookDetailsProvider(bookId));

    return details.when(
      data: (model) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _bookDetailsUI(model!),
            RelatedBooksWidget(model.relatedBooks!),
            SizedBox(
              height: 10,
            )
          ],
        );
      },
      error: (_, __) => const Center(
        child: Text("error"),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _bookDetailsUI(Book model) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Image.network(
              model.fullImagePath,
              fit: BoxFit.fitHeight,
            ),
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              model.bookTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "${Config.currency}${model.bookPrice.toString()}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: model.calculateDiscount > 0
                          ? Colors.red
                          : Colors.black,
                      decoration: model.bookSalePrice > 0
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  Text(
                    (model.calculateDiscount > 0)
                        ? " ${Config.currency}${model.bookSalePrice.toString()}"
                        : "",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Text(
                  "Share",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
                label: const Icon(
                  Icons.share,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ],
          ),
          Text(
            "Availability: ${model.stockStatus}",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomStepper(
                lowerLimit: 1,
                upperLimit: 20,
                stepValue: 1,
                iconSize: 22.0,
                value: 1,
                onChanged: (value) {},
              ),
              TextButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xff1bba85),
                  ),
                ),
                icon: const Icon(
                  Icons.shopping_basket,
                  color: Colors.white,
                ),
                label: const Text(
                  "Add to Cart",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ColExpand(
            title: "Short Description",
            content: model.bookShortDescription,
          ),
          const SizedBox(
            height: 15,
          ),
          ColExpand(
            title: "Synopsis",
            content: model.bookSynopsis,
          )
        ],
      ),
    );
  }
}
