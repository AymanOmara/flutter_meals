import 'package:untitled/features/categories/data/category.dart';
class CategoriesState{}
class IntailState extends CategoriesState{}
class LoadingState extends CategoriesState{}
class DataSuccessSate extends CategoriesState{
  List<CategoryModel> categories;
  DataSuccessSate({required this.categories});
}
class ErrorSate extends CategoriesState{
  String title = "error";
}