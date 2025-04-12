import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/icon/icons.dart';

class AppButtons extends StatefulWidget {
  final String data;
  final void Function() onPressed;

  const AppButtons({super.key, required this.data, required this.onPressed});

  @override
  State<AppButtons> createState() => _AppButtonsState();
}

class _AppButtonsState extends State<AppButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimens.d300,
      height: AppDimens.d60,
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.deepPurple),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        onPressed: widget.onPressed,
        child: Center(
          child: Text(widget.data, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imgUrl;
  final double price;
  final Color color;

  const ImageCard({
    super.key,
    required this.imgUrl,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(imgUrl, fit: BoxFit.contain),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                AppIcons.liner,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppOutlineButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const AppOutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimens.d300,
      height: AppDimens.d60,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: AppColors.deepPurple),borderRadius: BorderRadius.circular(AppDimens.d12)))
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(text, style: TextStyle(color: AppColors.deepPurple)),
        ),
      ),
    );
  }
}
