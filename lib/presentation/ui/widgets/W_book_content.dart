import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_books/presentation/ui/screens/book/book_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../../../domains/entitins/book/book.dart';
import '../resources/colors.dart';
import '../resources/styles.dart';
class WBookContent extends StatelessWidget {
  final Book book;
  const WBookContent({required this.book,super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none,
      children: [
        SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding:const EdgeInsets.all(24),
            decoration: const BoxDecoration(
                color: AppColors.wihte,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100,),
                Text(book.title,
                  style: Styles.getBookTitleStyle(),
                  maxLines: 2,
                  textAlign: TextAlign.center,),
                const SizedBox(height: 10,),
                Text(book.authorName,
                  style: Styles.getAuthorStyle(),
                  maxLines: 1,
                  textAlign: TextAlign.center,),
                const SizedBox(height: 20,),
                Row(

                  mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(book.languade, style: Styles.getBookValueStyle(),),
                        const SizedBox(height: 12,),
                        Text("Til", style: Styles.getCategoryStyle(),),
                      ],
                    ),
                    Column(
                      children: [
                        Text(book.pages.toString(), style: Styles.getBookValueStyle(),),
                        const SizedBox(height: 12,),
                        Text("Bet", style: Styles.getCategoryStyle(),),
                      ],
                    ),
                    Column(
                      children: [
                        Text(book.publishedYear.toString(), style: Styles.getBookValueStyle(),),
                        const SizedBox(height: 12,),
                        Text("Yil", style: Styles.getCategoryStyle(),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Qisqa ma'lumot",
                    style: Styles.getBookTitleStyle(),),
                ),
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(book.desriiption,
                    style: Styles.getDescriptionStyle(),),
                ),
                const SizedBox(height: 15,),
                GestureDetector(
                  onTap: (){
                   Navigator.of(context).push(CupertinoPageRoute(builder:
                        (_)=> BookScreen(title: book.title,
                        path: book.path,)));
                  },
                  child: Container(

                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius:
                      BorderRadius.circular(12),
                    ),
                    child: Text("Kitobni uqish",style: Styles.getButtonTextStyle(),),

                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: -180,
          child: Align(
            alignment: Alignment.topCenter,
            child:
            SvgPicture.asset(book.image,
              width: 180,
              height: 270,),
          ),
        )
      ],
    );
  }
}
