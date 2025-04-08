import 'package:flutter/material.dart';
import 'package:home_task11/theme/icon/icons.dart';
import 'package:home_task11/theme/strings/app_string.dart';
const productList=[

  'assets/products/i (1)-Picsart-BackgroundRemover.webp',
  'assets/products/i (2)-Picsart-BackgroundRemover.webp',
  'assets/products/i (3)-Picsart-BackgroundRemover.webp',
  'assets/products/i (4)-Picsart-BackgroundRemover.webp',
//! copy
  'assets/products/i (1)-Picsart-BackgroundRemover.webp',
  'assets/products/i (2)-Picsart-BackgroundRemover.webp',
  'assets/products/i (3)-Picsart-BackgroundRemover.webp',
  'assets/products/i (4)-Picsart-BackgroundRemover.webp',
];

class Product extends StatefulWidget {
  final String imgUrl;
  final double price;
  final int stars;
  final Color color;
  const Product({super.key, required this.imgUrl, required this.price, required this.stars, required this.color});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: ListTile(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: AppIcons.back),),),
    body: Column(
      children: [
       const Text(AppStrings.orange,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),),
      const  SizedBox(height: 15,),
      SizedBox(
        width: 340,height: 200,
        child: Card(color: widget.color,child: Center(child:Image.asset(widget.imgUrl,fit: BoxFit.cover,),),),
      ),
      ],
    ),
    );
  }
}
