import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/colors.dart';
import '../../resources/styles.dart';
class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          "Ustoz",
          style: Styles.getTitlesStyle(),
        ),
        backgroundColor: AppColors.cooks,
        elevation: 0,
      ),
     body: Padding(
       padding: EdgeInsets.all(20),
       child: Column(
         children: [
           const SizedBox(height: 50,),
           const CircleAvatar(
             radius: 90,
             backgroundImage: AssetImage("assets/images/rasim.jpg"),
           ),
           const SizedBox(height: 10,),

           itemprofile("Ustoz", "Ulmasbek Yuldashev", CupertinoIcons.person_alt),
           const SizedBox(height: 10,),
           itemprofile("Telifon", "+998 97 278 05 39", CupertinoIcons.phone),
           const SizedBox(height: 10,),
           itemprofile("Telegram", "@baxtiyor0997", CupertinoIcons.triangle_lefthalf_fill),
           const SizedBox(height: 10,),
           itemprofile("Email", "baxtiyor_0997@mail.ru", CupertinoIcons.mail)
         ],
       ),
     ),
    );
  }
  itemprofile(String title, String subtitle, IconData iconData){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0,4),
              color: Colors.black12.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 10
          )
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }
}

