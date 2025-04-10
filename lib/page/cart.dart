import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/custom_app_bar/app_bar.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/dialog.dart';

import '../theme/icon/icons.dart';
import '../theme/widget/you_cart.dart';

class Cart extends StatefulWidget {
  final double price;
  final Color color;
  final String imgUrl;
  final int imgUrlIndex;
  final String productName;
  const Cart({
    super.key,
    required this.imgUrl,
    required this.imgUrlIndex,
    required this.productName,
    required this.color, required this.price,
  });

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, AppStrings.back),
      body: Column(
        children: [
          const YouCartAndDeleteButton(),
          Align(
            alignment: Alignment(-0.8, 0),
            child: Text('${widget.imgUrlIndex} items'),
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
                      SmallImageCard(widget: widget),
                      SizedBox(
                        width: 220,
                        height: 75,
                        child: Column(
                          children: [
                            Text(
                                "Rains Backpack pacific",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                            ),
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
CustomDialog.dialog(context);
                                          ///todo
                                        },
                                        icon: AppIcons.delete,
                                      ),
                                    ),
                                  ),
                                ),
                               const SizedBox(width: 10,),
                                Text("$count"),
                                const SizedBox(width: 10,),

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
const  SizedBox(width: 10,),
                                Expanded(child: Text(r'$' "${widget.price *count.toInt()}..")),

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
         const  Spacer(),
          AppButtons(data: 'Check out\n' r'$' '${widget.price*count}', onPressed: (){

            CustomDialog.dialog2(context,(){});
            Navigator.pushNamed(context, AppRoutes.emptyCart);
          }),
       const  SizedBox(height: 25,),
        ],
      ),
    );
  }
}

class SmallImageCard extends StatelessWidget {
  const SmallImageCard({
    super.key,
    required this.widget,
  });

  final Cart widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Card(
        color: widget.color,
        child: Center(child: Image.asset(widget.imgUrl)),
      ),
    );
  }
}
