import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_books/presentation/ui/screens/home/home.dart';
import 'package:flutter_books/presentation/ui/screens/home/home_screens.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Home(),
    //  asdfasdfa
    );
  }
}


