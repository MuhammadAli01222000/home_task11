import 'package:flutter/material.dart';
import 'package:home_task11/model/models.dart';
import 'package:home_task11/page/product.dart';
import 'package:home_task11/services/app_controller.dart';
import 'package:home_task11/theme/icon/icons.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';

import '../theme/colors/app_colors.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
initialize();

  }
List<ModelProduct> productList=[]; ///items copy qilish uchun
  bool isLoading=false;/// for json
  int index=0; ///counter

  void initialize() async {
    final controller = AppController();
    final items = await controller.readData();

    if (mounted) {
      setState(() {
        productList = items;
        isLoading = false;
      });
    }
  }

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
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
        children: [
          SizedBox(
            height: 40,
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
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: [
                for (int i = 0; i < productList.length; i++)
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Product(modelProduct:  productList[i],),
                        ),
                      );
                    },
                    child: ImageCard(
                      imgUrl: productList[i].imgUrl,
                      price: productList[i].price,
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
