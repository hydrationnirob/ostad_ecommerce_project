
import 'package:get/get.dart';

import 'MainBottomNavController.dart';

class StateHolderBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
  }
}