import 'package:flutter/material.dart';
import 'package:home_task11/page/home.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';

class CongratulationsInfo extends StatelessWidget {
  const CongratulationsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppDimens.d25),
        child: Column(
          children: [
            Spacer(),
            Text(
              AppStrings.congratulations,
              style: TextStyle(
                color: AppColors.deepPurple,
                fontWeight: FontWeight.w700,
                fontSize: AppDimens.d35,
              ),
            ),
            const SizedBox(height: AppDimens.d12),
            Text(
              AppStrings.congratulationsInfo,
              style: TextStyle(
                color: AppColors.deepPurple,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            const Spacer(),
            Center(
              child: AppButtons(
                data: AppStrings.continue3,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
            ),
            const SizedBox(height: AppDimens.d35),
          ],
        ),
      ),
    );
  }
}
