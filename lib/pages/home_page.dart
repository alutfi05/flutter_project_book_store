import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/widgets/widget_home_books.dart';
import 'package:flutter_project_book_store/widgets/widget_home_categories.dart';
import '../widgets/widget_home_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: const [
            HomeSliderWidget(),
            SizedBox(
              height: 25,
            ),
            HomeCategoriesWidget(),
            SizedBox(
              height: 25,
            ),
            HomeBooksWidget(),
            // ProductCard(
            //   model: model,
            // ),
          ],
        ),
      ),
    );
  }
}
