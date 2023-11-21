import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter_books/presentation/ui/resources/colors.dart';
import 'package:flutter_books/presentation/ui/resources/styles.dart';
class BookScreen extends StatefulWidget {
  final String title;
  final String path;
  const BookScreen({required this.title,
    required this.path,super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:AppColors.cooks ,
        title: Text(widget.title,
          style: Styles.getTitlesStyle(),),
      ),
      body:  SfPdfViewer.asset(widget.path,
      enableTextSelection:false ,),
    );
  }
}

