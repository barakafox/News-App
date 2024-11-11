import 'package:flutter/material.dart';
import 'package:news_apps_revision/Providers/article_provider.dart';
import 'package:news_apps_revision/Screens/article_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (context) => ArticleProvider(),)
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'News App',
      home: HomeScreen(),
    ),
    );
  }
}

