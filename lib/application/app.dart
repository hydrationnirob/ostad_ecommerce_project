import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/presentation/ui/screens/SplashScreen.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/app_colors.dart';

class CraftBay extends StatelessWidget {
  const CraftBay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        primarySwatch:
        MaterialColor(AppColors.primaryColor.value, AppColors().color),
      ),
    );
  }
}