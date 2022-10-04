import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/pages/books_page.dart';
import 'package:flutter_project_book_store/pages/home_page.dart';
import 'package:flutter_project_book_store/pages/login_pages.dart';
import 'package:flutter_project_book_store/pages/register_page.dart';
import 'package:flutter_project_book_store/utils/shared_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool _result = await SharedService.isLoggedIn();

  if (_result) {
    _defaultHome = const HomePage();
  }
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
      // home: const RegisterPage(),
      routes: <String, WidgetBuilder>{
        '/': (context) => _defaultHome,
        '/register': (BuildContext context) => const RegisterPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/home': (BuildContext context) => const HomePage(),
        '/books': (BuildContext context) => const BooksPage()
      },
    );
  }
}
