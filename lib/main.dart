import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/pages/book_details_page.dart';
import 'package:flutter_project_book_store/pages/books_page.dart';
import 'package:flutter_project_book_store/pages/cart_page.dart';
import 'package:flutter_project_book_store/pages/dashboard_page.dart';
import 'package:flutter_project_book_store/pages/home_page.dart';
import 'package:flutter_project_book_store/pages/login_pages.dart';
import 'package:flutter_project_book_store/pages/order_success.dart';
import 'package:flutter_project_book_store/pages/payment_page.dart';
import 'package:flutter_project_book_store/pages/register_page.dart';
import 'package:flutter_project_book_store/pages/wishlist_page.dart';
import 'package:flutter_project_book_store/utils/shared_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Widget _defaultHome = const LoginPage();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool result = await SharedService.isLoggedIn();

  if (result) {
    _defaultHome = const DashboardPage();
  }

  Stripe.publishableKey =
      "pk_test_51LpnCUELC17kV4b6zuK9fyJrqJnExtosZ4C1if6nb7zLSqe9Q7k89mGTSd5Qlf64r4wUeLdVgAe5gpjDvj90cV9p00SkqoId5U";

  await Stripe.instance.applySettings();

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
      navigatorKey: navigatorKey,
      // home: const WishlistPage(),
      routes: <String, WidgetBuilder>{
        '/': (context) => _defaultHome,
        '/register': (BuildContext context) => const RegisterPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/home': (BuildContext context) => const HomePage(),
        '/cart': (BuildContext context) => const CartPage(),
        '/books': (BuildContext context) => BooksPage(),
        '/book-details': (BuildContext context) => const BookDetailsPage(),
        '/payments': (context) => const PaymentPage(),
        '/order-success': (context) => const OrderSuccess(),
        '/wishlist': (context) => const WishlistPage(),
      },
    );
  }
}
