import 'package:flutter/material.dart';
import 'package:fluttter_with_test/Notifiers/NewsChangeNotifier.dart';
import 'package:fluttter_with_test/Screens/Newspage.dart';
import 'package:fluttter_with_test/Services/NewsService.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (_) => NewsChangeNotifier(NewsService()),
          child: Newspage(),
        ));
  }
}
