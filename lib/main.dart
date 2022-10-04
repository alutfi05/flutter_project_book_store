import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/pages/books_page.dart';
import 'package:flutter_project_book_store/pages/home_page.dart';
import 'package:flutter_project_book_store/pages/register_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterPage(),
      routes: <String, WidgetBuilder>{
        '/register': (BuildContext context) => const RegisterPage(),
        '/books': (BuildContext context) => const BooksPage()
      },
    );
  }
}
