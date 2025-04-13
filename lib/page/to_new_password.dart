import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/text_field.dart';

class ToNewPassword extends StatefulWidget {
  const ToNewPassword({super.key});

  @override
  State<ToNewPassword> createState() => _ToNewPasswordState();
}

class _ToNewPasswordState extends State<ToNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.d25),
        child: Column(
          children: [
            const SizedBox(height: AppDimens.d180),
            Text(
              AppStrings.newPassword,
              style: TextStyle(
                color: AppColors.deepPurple,
                fontSize: AppDimens.d35,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: AppDimens.d12),
            AppTextField(hintText: AppStrings.newPassword),
            SizedBox(height: AppDimens.d12),
            AppTextField(hintText: AppStrings.confirmPassword),
            const SizedBox(height: AppDimens.d35),
            AppButtons(
              data: AppStrings.save,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.passwordSaved);
              },
            ),

            /// email yozsh kerak
          ],
        ),
      ),
    );
  }
}
