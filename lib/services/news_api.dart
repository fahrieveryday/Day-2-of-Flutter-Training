import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice2/models/news_api.dart';

class NewsApi {
  static Future<List<Article>> fetchArticle() async {
    final response = await http
        .get(Uri.parse('https://newsapi.org/v2/top-headlines?country=id&apiKey=34dbb2ae563c49ecae6c6530b208219f'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final responseBody = jsonDecode(response.body);
      final result = responseBody['articles'] as List;
      List<Article> listArticle =
          result.map((item) => Article.fromJson(item)).toList();
      return listArticle;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Article');
    }
  }
}
