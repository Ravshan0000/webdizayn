import 'package:flutter/material.dart';
import 'package:flutter_books/data/books.dart';
import 'package:flutter_books/presentation/ui/resources/colors.dart';
import 'package:flutter_books/presentation/ui/resources/images.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../resources/styles.dart';
import '../../widgets/w_book_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width=0;
  @override
  Widget build(BuildContext context) {
    width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kitoblar",
          style: Styles.getTitlesStyle(),
        ),
        backgroundColor: AppColors.cooks,
        elevation: 0,
      ),
      body: Padding(

        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index ){
            return  WBookCard(
              book: books[index],
            );
            },
          itemCount: books.length,
      ),


      ),
    );
  }
}
