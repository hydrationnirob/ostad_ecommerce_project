
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/Data/models/NetworkResponse.dart';
import 'package:ostad_ecommerce_project/Data/utility/NetworkCaller.dart';
import 'package:ostad_ecommerce_project/Data/utility/Urls.dart';

class EmailVerificationController extends GetxController {
  bool _emailVerificationInProgress = false;
  String _message = '';

  bool get emailVerificationInProgress => _emailVerificationInProgress;

  String get message => _message;

  Future<bool> verifyEmail(String email) async {
    _emailVerificationInProgress = true;
    update();
    final NetworkResponse response = await NetworkCaller().getRequest(Urls.verifyEmail(email));
    _emailVerificationInProgress = false;
    update();
    if (response.isSuccess) {
      _message = response.responseJson?['data'] ?? '';
      return true;
    } else {
      return false;
    }
  }
}