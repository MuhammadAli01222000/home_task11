import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
sealed class AppIcons{
  static const search=Icon(Icons.search_rounded,size: 25,);
  static const delete=Icon(Icons.delete,);
  static const add=Icon(Icons.add);
  static const menu=Icon(Icons.widgets_rounded,size: 25,);
  static const back=Icon(Icons.arrow_back_ios_rounded,size: 25,);
  static const liner=Icon(Icons.linear_scale,size: 25,);
  static const star=Icon(Icons.star,color: AppColors.yellow2,);
  static const star2=Icon(Icons.star,color: AppColors.grey,);
  static const favorite=Icon(Icons.favorite_border,);
  static const favorite2=Icon(Icons.favorite);
  static const buy=Icon(Icons.shopping_basket);
  static const buy2=Icon(Icons.shopping_basket_outlined);
}