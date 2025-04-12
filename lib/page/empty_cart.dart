import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/widget/buttons.dart';

import 'home.dart';
class EmptyCart extends StatefulWidget {
  const EmptyCart({super.key});

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const  SizedBox(height: 150,),
 Center(child: Image.asset('assets/korzinka.jpg'),),
         const  Text("You cart is empty",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
         const  SizedBox(height: 16,),
          Text("Looking for ideas?",style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.w400),),
          const  SizedBox(height: 16,),

          AppButtons(data: "Explore New Products", onPressed: (){Navigator. pushReplacement<void, void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const Home(),
            ),
          );})
        ],
      ),
    );
  }
}
