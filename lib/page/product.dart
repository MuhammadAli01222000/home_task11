import 'package:flutter/material.dart';
import 'package:home_task11/page/comment.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/icon/icons.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';

import '../theme/colors/app_colors.dart';

const productList = [
  'assets/products/i (1)-Picsart-BackgroundRemover.webp',
  'assets/products/i (2)-Picsart-BackgroundRemover.webp',
  'assets/products/i (3)-Picsart-BackgroundRemover.webp',
  'assets/products/i (4)-Picsart-BackgroundRemover.webp',
  //! copy
  'assets/products/i (5)-Picsart-BackgroundRemover.webp',
  'assets/products/i (2)-Picsart-BackgroundRemover.webp',
  'assets/products/i (3)-Picsart-BackgroundRemover.webp',
  'assets/products/i (4)-Picsart-BackgroundRemover.webp',
];

class Product extends StatefulWidget {
  final String imgUrl;
  final double price;
  final int stars;
  final Color color;
  const Product({
    super.key,
    required this.imgUrl,
    required this.price,
    required this.stars,
    required this.color,
  });

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    int colors = widget.color.value;
    final String price=widget.price.toString();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: null,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: AppIcons.back,
            ),
            Text(AppStrings.back, style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
      body: Column(
        children: [
          const Text(
            AppStrings.orange,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 340,
            height: 200,
            child: Stack(
              children: [
                // Background card (e.g., image)
                Positioned(
                  child: Card(
                    color: widget.color,
                    child: Center(
                      child: Image.asset(widget.imgUrl, fit: BoxFit.cover),
                    ),
                  ),
                ),
                // Price text
                Positioned(
                  top: 10,
                  right: 20,
                  left: 240,
                  child: SizedBox(
                    width: 50,
                    height: 40,
                    child: Card(
                      color: Colors.white,
                      child: Center(
                        child: Text(
                         r'$' '$price',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
///text furniture
          Padding(
            padding: EdgeInsets.all(12),
            child: Center(
              child: Row(
                children: [
                  Text("Furniture", style: TextStyle(color: Colors.grey)),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, AppRoutes.comment);
                    },
                    child: Text(
                      "124 views",
                      style: TextStyle(
                        color: AppColors.blue2,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.blue2
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

        Padding(padding:EdgeInsets.all(12), child:SizedBox(child: Row(
          children: [
            for (int i=0;i<widget.stars;i++)
              Icon(Icons.star,color: AppColors.yellow2,),
            if(widget.stars<5)               Icon(Icons.star,color: AppColors.grey,),

          ],
        ),)),
        
        AppButtons(data: AppStrings.add, onPressed: (){Navigator.pushNamed(context, AppRoutes.comment);})
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: AppIcons.buy,label: ''),
        BottomNavigationBarItem(icon: AppIcons.buy2,label: ''),
        BottomNavigationBarItem(icon: AppIcons.favorite,label: ''),
      ]),
    );
  }
}
