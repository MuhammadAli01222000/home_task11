import 'package:flutter/material.dart';
import 'package:home_task11/model/models.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/icon/icons.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';

import '../theme/colors/app_colors.dart';
import '../theme/custom_app_bar/app_bar.dart';
class Product extends StatefulWidget {
  final ModelProduct modelProduct;
  const Product({super.key, required this.modelProduct});
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isPressed = false;
 int  currentIndex=0;

  @override
  Widget build(BuildContext context) {
    final String price = widget.modelProduct.price.toString();
    final String description = widget.modelProduct.description;
    final String imgUrl = widget.modelProduct.imgUrl;
    final String productName = widget.modelProduct.productName;
    final String productType = widget.modelProduct.productType;
    int color = widget.modelProduct.color;
    int stars = widget.modelProduct.stars;
    int comments = widget.modelProduct.countComment;

    return Scaffold(
      appBar: buildAppBar(context, AppStrings.back),
      body: Column(
        children: [
          Text(
            productName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 340,
            height: 350,
            child: Stack(
              children: [
                Positioned(
                  right: 20,top: 60,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                    },
                    icon:
                        isPressed ? AppIcons.favorite2
                            : AppIcons.favorite,
                  ),
                ),
                Positioned(
                  child: Card(
                    color: Color(color),
                    child: Center(
                      child: Image.asset(imgUrl, fit: BoxFit.cover),
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
                          r'$'
                          '$price',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
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
            padding: EdgeInsets.only(left: 100, top: 20),
            child: Center(
              child: Row(
                children: [
                  Text(productType, style: TextStyle(color: Colors.grey)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.comment);
                    },
                    child: Text(
                      " $comments views",
                      style: TextStyle(
                        color: AppColors.blue2,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.blue2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// star
          Padding(
            padding: EdgeInsets.only(left: 95, top: 15, bottom: 10),
            child: SizedBox(
              child: Row(
                children: [
                  for (int i = 0; i < stars; i++)
                    Icon(Icons.star, color: AppColors.yellow2),
                  if (stars < 5) Icon(Icons.star, color: AppColors.grey),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              description,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          AppButtons(
            data: AppStrings.add,
            onPressed: () {
              AppRoutes.cartPage(
                context,
                imgUrl: imgUrl,
                imgUrlIndex: 1,
                productName: productName,
                color: color,
                price: widget.modelProduct.price,
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;

          });
          if(currentIndex==1){
            AppRoutes.cartPage(
              context,
              imgUrl: imgUrl,
              imgUrlIndex: 1,
              productName: productName,
              color: color,
              price: widget.modelProduct.price,
            );          }
        },
        selectedItemColor: AppColors.deepPurple,
        unselectedItemColor: AppColors.grey,
        selectedIconTheme: IconThemeData(
          color: AppColors.deepPurple,
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
          size: 24,
        ),
        items: [
          BottomNavigationBarItem(icon: AppIcons.buy, label: ''),
          BottomNavigationBarItem(icon: AppIcons.buy2, label: ''),
          BottomNavigationBarItem(icon: AppIcons.favorite2, label: ''),
        ],
      ),

    );
  }
}
