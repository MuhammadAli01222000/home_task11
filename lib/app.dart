import 'package:flutter/material.dart';
import 'package:home_task11/model/models.dart';
import 'package:home_task11/page/auth.dart';
import 'package:home_task11/page/home.dart';
import 'package:home_task11/page/product.dart';
import 'package:home_task11/theme/core/routes.dart';
class App extends StatelessWidget {
  const App({super.key});
//todo tegma
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.auth,
      routes: AppRoutes.routes,
      onGenerateRoute: (settings) {
        if (settings.name == AppRoutes.product) {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => Product(
             modelProduct: ModelProduct(stars: 1, countComment: 1, price: 1, imgUrl: '', productName: '', productType: 'productType', description: 'description', color: 0),
            ),
          );
        }
        return null;
      },
    );

  }
}
