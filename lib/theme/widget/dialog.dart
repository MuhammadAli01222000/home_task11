import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/strings/app_string.dart';

class AppDialog extends StatelessWidget {
  final String str1;
  final String str2;
  final String str3;
  final String str4;

  const AppDialog({
    super.key,
    required this.str1,
    required this.str2,
    required this.str3,
    required this.str4,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                str1,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                str2,
                style: const TextStyle(fontSize: 16, color: AppColors.grey),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColors.deepPurple),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        str3,
                        style: const TextStyle(color: AppColors.deepPurple),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(str4,style: TextStyle(color: AppColors.white),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
sealed class CustomDialog {
  static void dialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AppDialog(
        str1: AppStrings.delete,
        str2: AppStrings.are,
        str3: AppStrings.cancel,
        str4: AppStrings.delete2,
      ),
    );
  }

  static void dialog2(BuildContext context ,void Function () onTap) {
    showDialog(
      context: context,
      builder: (context) => AppDialog(
        str1: AppStrings.empty,
        str2: AppStrings.are2,
        str3: AppStrings.cancel,
        str4: AppStrings.empty,
      ),
    );
  }
}

