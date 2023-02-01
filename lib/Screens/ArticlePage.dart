import 'package:flutter/material.dart';
import 'package:fluttter_with_test/Model/Article.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  const ArticlePage({required this.article, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: mq.padding.top,
          bottom: mq.padding.bottom,
          right: 8,
          left: 8,
        ),
        child: Column(children: [
          Text(
            article.title,
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(article.content)
        ]),
      ),
    );
  }
}
