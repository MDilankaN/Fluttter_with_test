import 'package:flutter/material.dart';
import 'package:fluttter_with_test/Model/Article.dart';
import 'package:fluttter_with_test/Services/NewsService.dart';

class NewsChangeNotifier extends ChangeNotifier {
  final NewsService _newsChangeNotifier;

  NewsChangeNotifier(this._newsChangeNotifier);

  List<Article> _articles = [];
  List<Article> get articles => _articles;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getArticles() async {
    _isLoading = true;
    notifyListeners();
    _articles = await _newsChangeNotifier.getArticles();
    _isLoading = false;
    notifyListeners();
  }
}
