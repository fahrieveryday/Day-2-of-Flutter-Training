import 'package:flutter/material.dart';
import 'package:practice2/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News API',
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.purple[800])),
      home: const HomePage(),
    );
  }
}
