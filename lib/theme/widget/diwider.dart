import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 1.5,color: AppColors.grey,);
  }
}
