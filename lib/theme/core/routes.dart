import'package:flutter/material.dart';
import 'package:home_task11/page/auth.dart';
import 'package:home_task11/page/cart.dart';
import 'package:home_task11/page/comment.dart';
import 'package:home_task11/page/confirmation.dart';
import 'package:home_task11/page/empty_cart.dart';
import 'package:home_task11/page/home.dart';
import 'package:home_task11/page/payment.dart';
import 'package:home_task11/page/sign_in.dart';
import 'package:home_task11/page/sign_up.dart';

import '../../model/models.dart';
import '../../page/congratulations_info.dart';
import '../../page/password_reset.dart';
import '../../page/password_saved.dart';
import '../../page/success.dart';
import '../../page/to_instructions.dart';
import '../../page/to_new_password.dart';
import '../../page/to_shipping_address.dart';
sealed class AppRoutes{
  static const auth="";
  static const home="home";
  static const comment="comment";
  static const product="product";
  static const cart="cart";
  static const emptyCart="emptyCart";
  static const signIn="signIn";
  static const signUp="signUp";
  static const passwordReset="passWordReset";
  static const toInstructions="toInstructions";
  static const toNewPassword="toNewPassword";
  static const success="Success";
  static const passwordSaved="passwordSaved";
  static const toShippingAddress="toShippingAddress";
  static const payment="payment";
  static const checkOut="checkOut";
  static const congratulationsInfo="congratulationsInfo";
  static Map<String, Widget Function(BuildContext)> routes =  <String, WidgetBuilder>{
    auth: (context) =>const Auth(),
    home: (context) =>const Home(),
    comment: (context) =>const Comment(),
    emptyCart: (context) =>const EmptyCart(),
    signIn: (context) =>const SignIn(),
    signUp: (context) =>const SignUp(),
    passwordReset:(context)=>const PasswordReset(),
    passwordSaved:(context)=>const PasswordSaved(),
    toInstructions:(context)=>const ToInstructions(),
    toNewPassword:(context)=>const ToNewPassword(),
    success:(context)=>const Success(),
    toShippingAddress:(context)=>const ToShippingAddress(),
    payment:(context)=>const Payment(),
    checkOut:(context)=>const CheckOut(),
    congratulationsInfo:(context)=>const CongratulationsInfo(),

    cart: (context) {
      final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
      return Cart(
        modelProduct: ModelProduct(
          price: args['price'],
          imgUrl: args['imgUrl'],
          productName: args['productName'],
          color: args['color'],
          productType: "unknown",
          description: "no description",
          stars: 0,
          countComment: 0,
        ),
      );
    },

  };
  static void cartPage(BuildContext context, {
    required String imgUrl,
    required int imgUrlIndex,
    required String productName,
    required int color,
    required double price,
  }) {
    Navigator.pushNamed(
      context,
      cart,
      arguments: {
        'price': price,
        'imgUrl': imgUrl,
        'imgUrlIndex': imgUrlIndex,
        'productName': productName,
        'color': color,
      },
    );
  }

}