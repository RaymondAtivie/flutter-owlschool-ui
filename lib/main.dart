import 'package:flutter/material.dart';
import 'package:owlschool/screens/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        // primaryColor: Colors.yellow,
        primaryColor: Color(0xFF5843be),
        accentColor: Color(0xFFf6f7f8),
      ),
      home: HomePage(),
    );
  }
}
