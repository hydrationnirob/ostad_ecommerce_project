
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/presentation/State_holder/EmailVerificationController.dart';

import 'MainBottomNavController.dart';

class StateHolderBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(EmailVerificationController());

  }
}