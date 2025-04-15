import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/custom_app_bar/app_bar.dart';
import 'package:home_task11/theme/dimens.dart';
import 'package:home_task11/theme/strings/app_string.dart';
import 'package:home_task11/theme/widget/buttons.dart';
import 'package:home_task11/theme/widget/diwider.dart';
import 'package:home_task11/theme/widget/text_field.dart';

class ToShippingAddress extends StatefulWidget {
  const ToShippingAddress({super.key});

  @override
  State<ToShippingAddress> createState() => _ToShippingAddressState();
}

class _ToShippingAddressState extends State<ToShippingAddress> {
  String? selectedCountry = 'Germany';
  final List<String> countries = ['Germany', 'France', 'Italy', 'Spain'];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: buildAppBar(context, AppStrings.back),
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.d25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2, bottom: AppDimens.d12),
              child: const Text(
                AppStrings.shipping,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimens.d35,
                ),
              ),
            ),
            const AppDivider(),
            DropdownButtonFormField<String>(
              hint: const Text(AppStrings.country),
              value: selectedCountry,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: AppDimens.d12,
                ),

                border: UnderlineInputBorder(),
              ),
              items:
                  countries.map((String country) {
                    return DropdownMenuItem<String>(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedCountry = newValue;
                });
              },
            ),
            const SizedBox(height: AppDimens.d25),
            AppTextField(hintText: AppStrings.town),
            const SizedBox(height: AppDimens.d25),
            AppTextField(hintText: AppStrings.postcode),
            const SizedBox(height: AppDimens.d25),
            AppTextField(hintText: AppStrings.street),
            const SizedBox(height: AppDimens.d12),
            Align(
              alignment: Alignment(-0.7, 0),
              child: Text(
                AppStrings.hintText,
                style: TextStyle(color: AppColors.grey),
              ),
            ),
            const Spacer(),
            AppButtons(data: AppStrings.next, onPressed: () {Navigator.pushNamed(context, AppRoutes.payment);}),
            SizedBox(height: AppDimens.d25),
          ],
        ),
      ),
    );
  }
}
