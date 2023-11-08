import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/network.dart';
import 'package:untitled/features/categories/logic/categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(IntailState()){
    getCategories();
  }

  void getCategories() async {
    emit(LoadingState());
    Network().getCategories().then((value) {
      // emit(ErrorSate());
      emit(DataSuccessSate(categories: value));
    }).catchError((error) {
      emit(ErrorSate());
    });
  }
}
