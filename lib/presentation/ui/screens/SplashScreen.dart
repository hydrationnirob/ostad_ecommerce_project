
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/presentation/State_holder/AuthController.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/image_assets_location.dart';

import 'Auth_Varificetion_screens/email_verifecation_screen.dart';
import 'MainBottomNavScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  Future<void> goToNextScreen() async {
    await AuthController.getAccessToken();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.offAll(() => AuthController.isLoggedIn
          ? const MainBottomNavScreen()
          : const EmailVerificationScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
              child: SvgPicture.asset(
                ImageAssets.craftyBayLogoSVG,
                width: 100,
              )),
          const Spacer(),
          const CircularProgressIndicator(),
          const SizedBox(
            height: 16,
          ),
          const Text('Version 1.0.0'),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}