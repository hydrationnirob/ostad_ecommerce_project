
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/presentation/ui/screens/Auth_Varificetion_screens/email_verifecation_screen.dart';

import 'MainBottomNavController.dart';

class StateHolderBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(const EmailVerificationScreen());
  }
}