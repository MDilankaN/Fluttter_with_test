import 'package:flutter/material.dart';
import 'package:fluttter_with_test/Screens/ArticlePage.dart';
import 'package:provider/provider.dart';
import 'package:fluttter_with_test/Notifiers/NewsChangeNotifier.dart';

class Newspage extends StatefulWidget {
  const Newspage({Key? key}) : super(key: key);

  @override
  State<Newspage> createState() => _NewspageState();
}

class _NewspageState extends State<Newspage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read<NewsChangeNotifier>().getArticles(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: Consumer<NewsChangeNotifier>(builder: (context, notifier, child) {
        if (notifier.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              key: Key('progress-indicator'),
            ),
          );
        }
        return ListView.builder(
          itemCount: notifier.articles.length,
          itemBuilder: (_, index) {
            final article = notifier.articles[index];
            return Card(
              elevation: 2,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ArticlePage(article: article)));
                },
                child: ListTile(
                  title: Text(article.title),
                  subtitle: Text(
                    article.content,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            );
          },
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
        );
      }),
    );
  }
}
