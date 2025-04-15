import 'package:flutter/material.dart';
import 'package:home_task11/model/models.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/custom_app_bar/app_bar.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/dialog.dart';

import '../theme/icon/icons.dart';
import '../theme/widget/you_cart.dart';

class Cart extends StatefulWidget {
final  ModelProduct modelProduct;
  const Cart({
    super.key,
    required this.modelProduct
  });
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool show = true;

  @override
  void initState() {
    super.initState();
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    final double price = widget.modelProduct.price;
    double sum=0;
    sum+=price*count;
   
    return Scaffold(
      appBar: buildAppBar(context, AppStrings.back),
      body:
          show == true
              ? Column(
                children: [
                  YouCartAndDeleteButton(
                    onTap: () {
                      CustomDialog.dialog(context, () {});
                    },
                  ),
                  Align(
                    alignment: Alignment(-0.8, 0),
                    child: Text('${count} items'),
                  ),
                  const SizedBox(height: 20),
                  const Divider(height: 3, color: AppColors.grey),

                  ///image and delete and add button
                  Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              SmallImageCard(widget: widget, color: widget.modelProduct.color,),
                              SizedBox(
                                width: 220,
                                height: 75,
                                child: Column(
                                  children: [
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 45,
                                          height: 45,
                                          child: Card(
                                            color: AppColors.blue2,
                                            child: Center(
                                              child: IconButton(
                                                onPressed: () {
                                                  CustomDialog.dialog2(
                                                    context,
                                                    () {
                                                      setState(() {
                                                        show = false;
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                  );

                                                  ///todo
                                                },
                                                icon: AppIcons.delete,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text("$count"),
                                        const SizedBox(width: 10),

                                        SizedBox(
                                          width: 45,
                                          height: 45,
                                          child: Card(
                                            color: AppColors.blue2,
                                            child: Center(
                                              child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    count++;
                                                  });
                                                },
                                                icon: AppIcons.add,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Text(
                                            r'$'
                                            "${price * count}..",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  AppButtons(
                    data:
                        'Check out\n'
                        r'$'
                        '$sum',
                    onPressed: () {
                      CustomDialog.dialog2(context, () {});
                      Navigator.pushNamed(context, AppRoutes.toShippingAddress);
                    },
                  ),
                  const SizedBox(height: 25),
                ],
              )
              : Center(child: Text("Empty")),
    );
  }
}

class SmallImageCard extends StatelessWidget {
  final int color;
  const SmallImageCard({super.key, required this.widget, required this.color});

  final Cart widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Card(
        color:Color(color),
        child: Center(child: Image.asset(widget.modelProduct.imgUrl)),
      ),
    );
  }
}
