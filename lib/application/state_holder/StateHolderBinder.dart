
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/presentation/State_holder/EmailVerificationController.dart';
import 'package:ostad_ecommerce_project/presentation/State_holder/HomeSlidersController.dart';
import 'package:ostad_ecommerce_project/presentation/State_holder/OtpVerificationController.dart';

import 'MainBottomNavController.dart';

class StateHolderBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(EmailVerificationController());
    Get.put(OtpVerificationController());
    Get.put(HomeSlidersController());

  }
}