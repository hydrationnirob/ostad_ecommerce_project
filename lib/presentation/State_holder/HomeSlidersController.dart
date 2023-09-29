

import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/Data/Models/NetworkResponse.dart';
import 'package:ostad_ecommerce_project/Data/Models/SliderModel.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/NetworkCaller.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/Urls.dart';

class HomeSlidersController extends GetxController {
  bool _getHomeSlidersInProgress = false;
  SliderModel _sliderModel = SliderModel();
  String _message = '';

  SliderModel get sliderModel => _sliderModel;

  bool get getHomeSlidersInProgress => _getHomeSlidersInProgress;

  String get message => _message;

  Future<bool> getHomeSliders() async {
    _getHomeSlidersInProgress = true;
    update();
    final NetworkResponse response = await NetworkCaller().getRequest(Urls.getHomeSliders);
    _getHomeSlidersInProgress = false;
    if (response.isSuccess) {
      _sliderModel = SliderModel.fromJson(response.responseJson ?? {});
      update();
      return true;
    } else {
      _message = 'Sliders data fetch failed!';
      update();
      return false;
    }
  }
}