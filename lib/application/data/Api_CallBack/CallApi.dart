import 'dart:convert';
import 'Api_Links.dart';
import 'CategoryList_CallBack.dart';
import 'package:http/http.dart' as http;

class CallApi{

 static Future<CategoryList> getCategoryList() async {
    var response = await http.get(Uri.parse(ApiLinks.categoryList));
    if (response.statusCode == 200)
    {

      return CategoryList.fromJson(jsonDecode(response.body));
    }
    else
    {

      throw Exception('Failed to load album');
    }
  }

}