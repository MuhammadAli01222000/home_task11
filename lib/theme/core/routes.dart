import'package:flutter/material.dart';
import 'package:home_task11/page/auth.dart';
import 'package:home_task11/page/cart.dart';
import 'package:home_task11/page/comment.dart';
import 'package:home_task11/page/empty_cart.dart';
import 'package:home_task11/page/home.dart';
sealed class AppRoutes{
  static const auth="";
  static const home="home";
  static const comment="comment";
  static const product="product";
  static const cart="cart";
  static const emptyCart="emptyCart";
  static Map<String, Widget Function(BuildContext)> routes =  <String, WidgetBuilder>{
    auth: (context) => Auth(),
    home: (context) => Home(),
    comment: (context) => Comment(),
    emptyCart: (context) => EmptyCart(),
    cart: (context) {
      final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
      return Cart(
        imgUrl: args['imgUrl'],
        imgUrlIndex: args['imgUrlIndex'],
        productName: args['productName'],
        color: args['color'],
        price: args['price'],
      );
    },
  };

  static void cartPage(BuildContext context, {
    required String imgUrl,
    required int imgUrlIndex,
    required String productName,
    required Color color,
    required double price,
  }) {
    Navigator.pushNamed(
      context,cart,
      arguments: {
        'price':price,
        'imgUrl': imgUrl,
        'imgUrlIndex': imgUrlIndex,
        'productName': productName,
        'color': color,
      },
    );
  }


}