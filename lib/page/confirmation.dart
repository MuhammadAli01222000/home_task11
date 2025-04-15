import 'package:flutter/material.dart';
import 'package:home_task11/model/card_model.dart';
import 'package:home_task11/page/congratulations_info.dart';
import 'package:home_task11/page/home.dart';
import 'package:home_task11/page/payment.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/custom_app_bar/app_bar.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/diwider.dart';

class CheckOut extends StatefulWidget {
  final CardModel? cardModel;
  const CheckOut({super.key, this.cardModel});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, AppStrings.back),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              AppStrings.checkout,
              style: TextStyle(
                fontSize: AppDimens.d35,
                fontWeight: FontWeight.w700,
              ),
            ),
            const AppDivider(),
            _ChangeWidget(text: AppStrings.shippingAdress),
            Align(
              alignment: Alignment(-0.7, 0),
              child: Text(
                'Client Address',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),

            Divider(),
            const _ChangeWidget(text: AppStrings.payment2),
            const SizedBox(height: AppDimens.d12),
            Align(
              alignment: Alignment(-0.7, 0),
              child: SizedBox(
                  height: AppDimens.d60,
                  width: AppDimens.d100,
                  child: Card(
                    elevation: 5,
                    color: AppColors.deepPurple,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/cart_icons/img_1.png',
                      ),
                    ),

                ),
              ),
            ),
            const SizedBox(height: AppDimens.d12),
            Text("User card info..."),

            const SizedBox(height: AppDimens.d25),
            const AppDivider(),
            const SizedBox(height: AppDimens.d25),
            Align(
              alignment: Alignment(-0.7, 0),
              child: Text(
                AppStrings.reviewProducts,
                style: TextStyle(
                  fontSize: AppDimens.d25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
           const  AppDivider(),
            Row(children: [
              for (int i=1;i<4;i++)
                SizedBox(width: AppDimens.d100,height: AppDimens.d100, child: Card(child: Image.asset("assets/products/i ($i)-Picsart-BackgroundRemover.webp"))),


            ],),
            const   Spacer(),
            AppButtons(data: "${AppStrings.placeOrder}\n"r"$10179", onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CongratulationsInfo()));}),
            const SizedBox(height: AppDimens.d35),
          ],
        ),
      ),
    );
  }
}

class _ChangeWidget extends StatelessWidget {
  final String text;
  const _ChangeWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppDimens.d25),
      ),
      trailing: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Payment()),
          );
        },
        child: Text(
          AppStrings.change,
          style: TextStyle(color: AppColors.blue, fontSize: AppDimens.d12),
        ),
      ),
    );
  }
}
