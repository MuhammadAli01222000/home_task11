import 'package:flutter/material.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/custom_app_bar/app_bar.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/diwider.dart';
import 'package:home_task11/theme/widget/text_field.dart';

import '../theme/colors/app_colors.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, AppStrings.back),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              AppStrings.payment,
              style: TextStyle(
                fontSize: AppDimens.d35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const AppDivider(),
            const SizedBox(height: AppDimens.d25),
            const Carts(),
            const SizedBox(height: AppDimens.d25),
            AppTextField(hintText: AppStrings.name),
            const SizedBox(height: AppDimens.d25),

            AppTextField(hintText: AppStrings.cardNumber),
            const SizedBox(height: AppDimens.d25),

            AppTextField(hintText: AppStrings.expiryData),
            const SizedBox(height: AppDimens.d25),

            AppTextField(hintText: AppStrings.cvc),
            const SizedBox(height: AppDimens.d25),
            ListTile(
              leading: Checkbox(
                value: check,
                shape: CircleBorder(),
                activeColor: AppColors.deepPurple,
                onChanged: (ch) {
                  setState(() {
                    check=ch!;
                  });
                },
              ),
              title: Text(AppStrings.info),
            ),
        SizedBox(
          width: AppDimens.d300,
          height: AppDimens.d60,
          child: OutlinedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(check? AppColors.deepPurple:AppColors.grey),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            onPressed: (){
              check? Navigator.pushNamed(context, AppRoutes.checkOut):Text('');
            },
            child: Center(
              child: Text(AppStrings.next, style: TextStyle(color: Colors.white)),
            ),
          ),
        ),          ],
        ),
      ),
    );
  }
}

class Carts extends StatelessWidget {
  const Carts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: AppDimens.d60,
          width: AppDimens.d100,
          child: Card(
            elevation: 5,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/cart_icons/img_2.png',

              ),
            ),
          ),
        ),
        SizedBox(
          height: AppDimens.d60,
          width: AppDimens.d100,
          child: Card(
            elevation: 5,
            color: AppColors.deepPurple,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/cart_icons/img_1.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        SizedBox(
          height: AppDimens.d60,
          width: AppDimens.d100,
          child: Card(
            elevation: 5,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/cart_icons/img.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
