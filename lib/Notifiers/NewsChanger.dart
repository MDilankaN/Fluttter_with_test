import 'package:flutter/material.dart';
import 'package:fluttter_with_test/Model/Article.dart';
import 'package:fluttter_with_test/Services/NewsService.dart';

class NewsChanger extends ChangeNotifier {
  final NewsService _newsService;

  NewsChanger(this._newsService);

  List<Article> _articles = [];
  List<Article> get articles => _articles;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getArticles() async {
    // TODO: Implement
  }
}
