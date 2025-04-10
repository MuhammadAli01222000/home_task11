import 'package:flutter/material.dart';
import 'package:home_task11/page/product.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/icon/icons.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';

import '../theme/colors/app_colors.dart';
const imgUrl=[
  'assets/products/i (1)-Picsart-BackgroundRemover.webp',
  'assets/products/i (2)-Picsart-BackgroundRemover.webp',
  'assets/products/i (3)-Picsart-BackgroundRemover.webp',
  'assets/products/i (4)-Picsart-BackgroundRemover.webp',
  'assets/products/i (1)-Picsart-BackgroundRemover.webp',
  'assets/products/i (2)-Picsart-BackgroundRemover.webp',
  'assets/products/i (3)-Picsart-BackgroundRemover.webp',
  'assets/products/i (4)-Picsart-BackgroundRemover.webp',
  'assets/products/i (1)-Picsart-BackgroundRemover.webp',
  'assets/products/i (2)-Picsart-BackgroundRemover.webp',
  'assets/products/i (3)-Picsart-BackgroundRemover.webp',
  'assets/products/i (4)-Picsart-BackgroundRemover.webp',
];
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = ScrollController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
            child: CustomScrollView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    for (int i = 0; i < AppStrings.productList.length; i++)
                      TextButton(
                        onPressed: () {},
                        child: Center(child: Text(AppStrings.productList[i])),
                      ),
                  ]),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(onPressed: () {}, icon: AppIcons.menu),
          ),
          Expanded(
            child: GridView(
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              
              ),
              children: [
                for (int i = 0; i <imgUrl.length; i++)
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(
                        context,
                        AppRoutes.product,
                        arguments: {
                          'imgUrl': imgUrl[i],
                          'price': 99.99,
                          'stars': 4,
                          'color': AppColors.colors[i],
                        },
                      );
},
                    child: ImageCard(
                      imgUrl:imgUrl[i],
                      price: 22.2+i+(i*i),
                      color: AppColors.colors[i],
                    ),
                  ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        AppStrings.product,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: AppIcons.search),
        SizedBox(width: 10),
      ],
    );
  }
}
