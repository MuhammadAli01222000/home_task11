import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/text_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              AppStrings.signIn,
              style: TextStyle(
                color: AppColors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: AppDimens.d35,
              ),
            ),

            AppTextField(hintText: AppStrings.email),
            const SizedBox(height: AppDimens.d25),
            AppTextField(hintText: AppStrings.password),
            const SizedBox(height: AppDimens.d25),
            AppButtons(data: AppStrings.signIn, onPressed: () {
              Navigator.pushNamed(context,AppRoutes.home);

            }),
            const SizedBox(height: AppDimens.d12),
            AppOutlineButton(
              text: AppStrings.signInFacebook,
              onPressed: () {},
            ),
            const SizedBox(height: AppDimens.d12),
            ListTile(
              leading: Text(AppStrings.dont),
              trailing: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.signUp);
                },
                child: Text(AppStrings.signUp),
              ),
            ),
            const SizedBox(height: AppDimens.d180),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  print('bosildi sign in');
                  Navigator.pushNamed(context,AppRoutes.passwordReset);
                },
                child: Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(color: AppColors.deepPurple),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
