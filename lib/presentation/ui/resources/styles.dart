import 'package:flutter/material.dart';
import 'package:flutter_books/presentation/ui/resources/colors.dart';
abstract class Styles{
 static TextStyle getTitleStyle()=> const TextStyle(
   fontSize: 18,
   color: AppColors.primaryColor,
   fontFamily: "Schyler",
   fontWeight: FontWeight.w600,
 );
 static TextStyle getBookTitleStyle()=> const TextStyle(
   fontSize: 18,
   color: AppColors.primaryColor,
   fontFamily: "Schyler",
   fontWeight: FontWeight.w500,
 );
 static TextStyle getAuthorStyle()=> const TextStyle(
   fontSize: 12,
   color: AppColors.primaryColor,
   fontFamily: "Schyler",
   fontWeight: FontWeight.w500,

 );
 static TextStyle getBookValueStyle()=> const TextStyle(
   fontSize: 14,
   color: AppColors.primaryColor,
   fontFamily: "Schyler",
   fontWeight: FontWeight.w500,

 );
 static TextStyle getCategoryStyle()=> const TextStyle(
   fontSize: 12,
   color: AppColors.grey,
   fontFamily: "Schyler",
   fontWeight: FontWeight.w500,

 );
 static TextStyle getDescriptionStyle()=> const TextStyle(
   fontSize: 14,
   color: AppColors.grey,
   fontFamily: "Schyler",
   fontWeight: FontWeight.w400,

 );
 static TextStyle getButtonTextStyle()=> const TextStyle(
   fontSize: 14,
   color: AppColors.wihte,
   fontFamily: "Schyler",
   fontWeight: FontWeight.w500,

 );
 static TextStyle getTitlesStyle()=> const TextStyle(
   fontSize: 25,
   color: AppColors.wihte,
   fontFamily: "Schyler",
   fontWeight: FontWeight.w500,
 );
}