
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_books/presentation/ui/resources/styles.dart';
import 'package:flutter_books/presentation/ui/screens/home/home_screens.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../article/article_screens.dart';
import '../foydalanuvchi/profil.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),

                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 70,),
                  GestureDetector(
                    onTap: () {
                      // Navigate to another screen or perform any other action you want
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => User()),
                      );
                    },
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                      title: Text(
                        "Webdizayn.uz",
                        style: Styles.getTitlesStyle(),
                      ),
                      trailing: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/rasim.jpg"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35,),
                ],
              )
            ),

             ],
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100)
                  )
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 50,
                mainAxisSpacing: 60,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),);},
                    child: itmDashboard("Top Kurslar", CupertinoIcons.book, Colors.deepPurple),
                  ),
                  InkWell(
                    onTap: () async {
                      final url =Uri.parse("https://scholar.google.com/citations?user=WBpADb8AAAAJ&hl=ru");
                      if(await canLaunchUrl(url)){
                      await launchUrl(url);
                      }
                    },
                    child: itmDashboard("Maqolalar", CupertinoIcons.pencil_ellipsis_rectangle, Colors.deepPurple),
                  ),
                  itmDashboard("Bepul Kurslar", CupertinoIcons.book_fill, Colors.deepPurple),
                  InkWell(
                    onTap: () async {
                      final url =Uri.parse("https://www.youtube.com/@baxtiyoryuldashev4049");
                      if(await canLaunchUrl(url)){
                        await launchUrl(url);
                      }
                    },
                    child: itmDashboard("Video Kurslar", CupertinoIcons.play, Colors.deepPurple),
                  ),






                ],),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],

      ),
    );

  }
  itmDashboard(String title, IconData iconData, Color background)=> Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: Offset(0,5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5,
        ),
      ],
    ),
    child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle
          ),
          child: Icon(iconData,color: Colors.white ),

        ),
        SizedBox(height: 8,),
        Text(title, style: Styles.getBookTitleStyle())
      ],),

  );
}
