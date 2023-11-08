import 'package:flutter/material.dart';
import 'package:untitled/features/categories/data/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(categoryModel.strCategory ?? ""),
        const Spacer(),
        SizedBox(width: 100,height: 100,child: Image.network(categoryModel.strCategoryThumb ?? ""),),
      ],
    );
  }
}
