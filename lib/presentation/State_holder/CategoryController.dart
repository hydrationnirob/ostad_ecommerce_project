
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/Data/Models/CategoryModel.dart';
import 'package:ostad_ecommerce_project/Data/Models/NetworkResponse.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/NetworkCaller.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/Urls.dart';

class CategoryController extends GetxController {
  bool _getCategoriesInProgress = false;
  CategoryModel _categoryModel = CategoryModel();
  String _message = '';

  CategoryModel get categoryModel => _categoryModel;

  bool get getCategoriesInProgress => _getCategoriesInProgress;

  String get message => _message;

  Future<bool> getCategories() async {
    _getCategoriesInProgress = true;
    update();
    final NetworkResponse response =
    await NetworkCaller().getRequest(Urls.getCategories);
    _getCategoriesInProgress = false;
    if (response.isSuccess) {
      _categoryModel = CategoryModel.fromJson(response.responseJson ?? {});
      update();
      return true;
    } else {
      _message = 'Category list data fetch failed!';
      update();
      return false;
    }
  }
}