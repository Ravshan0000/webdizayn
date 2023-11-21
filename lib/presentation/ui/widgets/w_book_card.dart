import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../domains/entitins/book/book.dart';
import '../resources/colors.dart';
import '../resources/images.dart';
import '../resources/styles.dart';
import 'W_book_content.dart';
class  WBookCard extends StatelessWidget {
  final Book book;
  double width=0;

   WBookCard({required this.book,super.key});

  @override
  Widget build(BuildContext context) {
    width= MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        children: [
          SvgPicture.asset(
            book.image,
            width: 90,
            height: 100,
          ),
          Positioned.fill(
            top: 0,

            right: 0,
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (){
                  showModalBottomSheet(context: context,
                      backgroundColor: Colors.transparent,
                      barrierColor: AppColors.shodw.withOpacity(0.5),
                      builder: (c)=> WBookContent(book: book));
                },
                child: Container(
                  width: width - 140,
                  height: 120,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.cook,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(color: AppColors.shodw,
                        spreadRadius: 5,
                        blurRadius: 3,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(book.title,
                        style: Styles.getTitleStyle(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(book.authorName,
                            style:
                            Styles.getAuthorStyle(),
                          ),
                          SvgPicture.asset(AppImages.arrow,
                            width: 30,
                            height: 30,),
                        ],
                      ),

                    ],
                  ),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



//final Book book;
//required this.book