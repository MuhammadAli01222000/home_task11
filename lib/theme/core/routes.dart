import'package:flutter/material.dart';
import 'package:home_task11/page/auth.dart';
import 'package:home_task11/page/home.dart';
sealed class AppRoutes{
  static const auth="";
  static const home="home";
  static const product="product";
  static Map<String, Widget Function(BuildContext)> routes =  <String, WidgetBuilder>{
    auth:(context)=>Auth(),
    home:(context)=>Home(),
  };
}