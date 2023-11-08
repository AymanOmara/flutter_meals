import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/categories/logic/categories_cubit.dart';
import 'package:untitled/features/categories/logic/categories_state.dart';
import 'package:untitled/features/categories/presentation/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoriesCubit(),
      child: BlocConsumer<CategoriesCubit, CategoriesState>(
        listener: (context, state) {
          if (state is ErrorSate) {
            print(state.title);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: state is LoadingState
                ? CircularProgressIndicator()
                : state is DataSuccessSate
                    ? ListView.builder(
                        itemCount: state.categories.length,
                        itemBuilder: (context, index) => CategoryItem(
                            categoryModel: state.categories[index]),
                      )
                    : Column(
                        children: [],
                      ),
          );
        },
      ),
    );
  }
}
