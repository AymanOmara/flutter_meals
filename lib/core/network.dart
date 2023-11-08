import 'package:dio/dio.dart';
import 'package:untitled/features/categories/data/category.dart';

class Network{
  final _dio= Dio();
   Future<List<CategoryModel>> getCategories() async {
     List<CategoryModel> data = [];
     var response = await _dio.get('https://www.themealdb.com/api/json/v1/1/categories.php');
      data =  (response.data["categories"] as List).map((e) => CategoryModel.fromJson(e)).toList();
     return data;
   }
}