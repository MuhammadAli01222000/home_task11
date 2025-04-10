import 'package:flutter/material.dart';
import 'package:home_task11/page/home.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width - 1,
            height: size.height - 1,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: const AssetImage('assets/img.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    AppStrings.shop,
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      letterSpacing: 25.0,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  AppStrings.amazing,
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  AppStrings.experience,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                    fontSize: 30,
                  ),
                ),
                const Spacer(),
                AppButtons(
                  data: AppStrings.explore,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.home);
                  },
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
