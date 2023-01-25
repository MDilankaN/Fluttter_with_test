import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:fluttter_with_test/Model/Article.dart';

class NewsService {
  final _articles = List.generate(
      10,
      (index) => Article(
          title: lorem(paragraphs: 1, words: 3),
          content: lorem(paragraphs: 10, words: 200)));

  Future<List<Article>> getArticles() async {
    await Future.delayed(const Duration(seconds: 1));
    return _articles;
  }
}
