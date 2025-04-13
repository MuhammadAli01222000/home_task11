import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/custom_app_bar/app_bar.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/text_field.dart';

class PasswordSaved extends StatefulWidget {
  const PasswordSaved({super.key});

  @override
  State<PasswordSaved> createState() => _PasswordSavedState();
}

class _PasswordSavedState extends State<PasswordSaved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, AppStrings.back),
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
            Text(
              AppStrings.you2,
              style: TextStyle(
                color: AppColors.deepPurple,
                fontSize:15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: AppDimens.d35),
            AppButtons(
              data: AppStrings.signIn,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.signIn);
              },
            ),

            /// email yozsh kerak
          ],
        ),
      ),
    );
  }
}
