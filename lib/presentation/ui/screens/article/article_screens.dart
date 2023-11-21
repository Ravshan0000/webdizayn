import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../resources/colors.dart';
import '../../resources/styles.dart';



class ArticlApp extends StatelessWidget {
  const ArticlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Maqolalar",
          style: Styles.getTitlesStyle(),
        ),
        backgroundColor: AppColors.cooks,
        elevation: 0,
      ),

      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () async{
              final url =Uri.parse("https://scholar.google.com/citations?user=WBpADb8AAAAJ&hl=ru");
              if(await canLaunchUrl(url)){
                await launchUrl(url);
                print("object");
              }

            }, child: const Text("Kurib chiqish",
            style: TextStyle(fontSize: 30),),
          ),
        ),

      ),
    );
  }


}
