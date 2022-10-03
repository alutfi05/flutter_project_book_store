import 'dart:convert';

import 'package:flutter_project_book_store/config.dart';
import 'package:flutter_project_book_store/models/book.dart';
import 'package:flutter_project_book_store/models/book_filter.dart';
import 'package:flutter_project_book_store/models/category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final apiService = Provider((ref) => APIService());

class APIService {
  static var client = http.Client();

  Future<List<Category>?> getCategories(page, pageSize) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
    };

    Map<String, String> queryString = {
      'page': page.toString(),
      'pageSize': pageSize.toString(),
    };

    var url = Uri.http(Config.apiURL, Config.categoryAPI, queryString);

    var response = await client.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      return categoriesFromJson(data["data"]);
    } else {
      return null;
    }
  }

  Future<List<Book>?> getBooks(
    BookFilterModel bookFilterModel,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
    };

    Map<String, String> queryString = {
      'page': bookFilterModel.paginationModel.page.toString(),
      'pageSize': bookFilterModel.paginationModel.pageSize.toString(),
    };

    if (bookFilterModel.categoryId != null) {
      queryString["categoryId"] = bookFilterModel.categoryId!;
    }

    if (bookFilterModel.sortBy != null) {
      queryString['sort'] = bookFilterModel.sortBy!;
    }

    var url = Uri.http(Config.apiURL, Config.bookAPI, queryString);

    var response = await client.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      return booksFromJson(data["data"]);
    } else {
      return null;
    }
  }
}
