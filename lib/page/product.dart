import 'package:flutter/material.dart';
import 'package:home_task11/page/comment.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/icon/icons.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';

import '../theme/colors/app_colors.dart';
import '../theme/custom_app_bar/app_bar.dart';

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
    final String price=widget.price.toString();

    return Scaffold(
      appBar: buildAppBar(context,AppStrings.back),
      body: Column(
        children: [
          const Text(
            AppStrings.orange,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 340,
            height: 350,
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
                  top: 20,
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
            padding: EdgeInsets.only(left: 100,top: 20),
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
/// star
        Padding(padding:EdgeInsets.only(left: 95,top: 15,bottom: 20), child:SizedBox(child: Row(
          children: [
            for (int i=0;i<widget.stars;i++)
              Icon(Icons.star,color: AppColors.yellow2,),
            if(widget.stars<5)               Icon(Icons.star,color: AppColors.grey,),

          ],
        ),)),

          AppButtons(
            data: AppStrings.add,
            onPressed: () {
              print('bosildi');

              AppRoutes.cartPage(
                context,
                imgUrl: widget.imgUrl,
                imgUrlIndex: 1,
                productName: 'no name',
                color: widget.color,
                price:widget.price,
              );
            },
          ),

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
