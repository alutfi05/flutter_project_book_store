import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/config.dart';
import '../models/book.dart';

class BookCard extends StatelessWidget {
  final Book? model;

  const BookCard({Key? key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: const BoxDecoration(color: Colors.white),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                visible: model!.calculateDiscount > 0,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Text(
                      "${model!.calculateDiscount}% OFF",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  // decoration: BoxDecoration(
                  //   border: Border.all(width: 0.3),
                  // ),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    model!.fullImagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    "/book-details",
                    arguments: {'bookId': model!.bookId},
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 10),
                child: Text(
                  model!.bookTitle,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          Text(
                            "${Config.currency}${model!.bookPrice.toString()}",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                              color: model!.calculateDiscount > 0
                                  ? Colors.red
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: model!.bookSalePrice > 0
                                  ? TextDecoration.lineThrough
                                  : null,
                            ),
                          ),
                          Text(
                            (model!.calculateDiscount > 0)
                                ? " ${model!.bookSalePrice.toString()}"
                                : "",
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
