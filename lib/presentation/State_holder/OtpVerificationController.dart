
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/Data/Models/NetworkResponse.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/NetworkCaller.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/Urls.dart';

import 'AuthController.dart';

class OtpVerificationController extends GetxController {
  bool _otpVerificationInProgress = false;
  String _message = '';

  bool get otpVerificationInProgress => _otpVerificationInProgress;

  String get message => _message;

  Future<bool> verifyOtp(String email, String otp) async {
    _otpVerificationInProgress = true;
    update();
    final NetworkResponse response =
    await NetworkCaller().getRequest(Urls.verifyOtp(email, otp));
    _otpVerificationInProgress = false;
    update();
    if (response.isSuccess) {
      await AuthController.setAccessToken(response.responseJson?['data']);
      return true;
    } else {
      return false;
    }
  }
}