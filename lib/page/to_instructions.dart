import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
class ToInstructions extends StatefulWidget {
  const ToInstructions({super.key});

  @override
  State<ToInstructions> createState() => _ToInstructionsState();
}

class _ToInstructionsState extends State<ToInstructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.d25),
        child: Column(
          children: [
            const SizedBox(height: AppDimens.d180,),
            Text(AppStrings.instructions,style: TextStyle(color: AppColors.deepPurple,fontSize: AppDimens.d35,fontWeight: FontWeight.w500),),
            const SizedBox(height: AppDimens.d12,),
            Text(AppStrings.check,style: TextStyle(color: AppColors.deepPurple,fontSize: 18),),
            const SizedBox(height: AppDimens.d35,),
            AppButtons(data: AppStrings.goToEmail, onPressed: (){Navigator.pushNamed(context, AppRoutes.toNewPassword);}), /// email yozsh kerak
          ],
        ),
      ),
    );
  }
}
