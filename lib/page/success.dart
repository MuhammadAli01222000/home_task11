import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/text_field.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.d25),
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.d25),
          child: Column(
            children:[
              const SizedBox(height: AppDimens.d180,),
              Text(AppStrings.congratulations,style: TextStyle(color: AppColors.deepPurple,fontSize: AppDimens.d35,fontWeight: FontWeight.w600),),
              const SizedBox(height: AppDimens.d12,),
              Text(AppStrings.you,style: TextStyle(color: AppColors.deepPurple,fontSize: 20,),),
             const   Spacer(),
AppButtons(data: AppStrings.signIn, onPressed: (){ Navigator.pushNamed(context, AppRoutes.signIn);}),

            ],
          ),
        ),
      ),
    );
  }
}
