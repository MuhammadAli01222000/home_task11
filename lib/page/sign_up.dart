import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.d25),
        child: Column(
          children: [
            const SizedBox(height: AppDimens.d150),
            Text(
              AppStrings.signUp,
              style: TextStyle(
                color: AppColors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: AppDimens.d35,
              ),
            ),
            const AppTextField(hintText: AppStrings.name),
            const SizedBox(height: AppDimens.d25),
            const AppTextField(hintText: AppStrings.email),
            const SizedBox(height: AppDimens.d25),
            const AppTextField(hintText: AppStrings.password),
            const SizedBox(height: AppDimens.d25),
            const AppTextField(hintText: AppStrings.confirm),
            const SizedBox(height: AppDimens.d25),
            AppButtons(data: AppStrings.signUp, onPressed: () {Navigator.pushNamed(context, AppRoutes.success);}),
            const SizedBox(height: AppDimens.d12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const     Text(AppStrings.dont),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.signIn);
                  },
                  child: Text(AppStrings.signIn,style: TextStyle(color: AppColors.blue,decoration: TextDecoration.underline),),
                ),
              ],
            ),

            const SizedBox(height: AppDimens.d180),

          ],
        ),
      ),
    );
  }
}
