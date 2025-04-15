import 'package:flutter/material.dart';
import 'package:home_task11/page/home.dart';
import 'package:home_task11/page/sign_in.dart';
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
              color: Colors.deepPurpleAccent.shade100,
              image: DecorationImage(
                image: const AssetImage('assets/img.png',),

              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 45),
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
                const SizedBox(height: 5),
                const Text(
                  AppStrings.amazing,
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  AppStrings.experience,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white70,
                    fontSize: 30,
                  ),
                ),
                const Spacer(),
                AppButtons(
                  data: AppStrings.explore,
                  onPressed: () {
                    Navigator. pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SignIn(),
                      ),
                    );                  },
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
