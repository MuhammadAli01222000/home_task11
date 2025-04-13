import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/text_field.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({super.key});

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
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
              AppStrings.passwordReset,
              style: TextStyle(
                color: AppColors.deepPurple,
                fontSize: AppDimens.d35,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              AppStrings.enter,
              style: TextStyle(color: AppColors.deepPurple, fontSize: 18),
            ),
            const SizedBox(height: 20),
            AppTextField(hintText: AppStrings.email),
            const SizedBox(height: 20),
            AppButtons(
              data: AppStrings.send,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.toInstructions);
              },
            ),
            const SizedBox(height: AppDimens.d180),
          ],
        ),
      ),
    );
  }
}
