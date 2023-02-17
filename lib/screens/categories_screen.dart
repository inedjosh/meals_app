import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 1,
            crossAxisSpacing: 15,
            mainAxisExtent: 110),
        children: DUMMY_CATEGORIES.map((data) {
          return CategoryItem(
            data.title,
            data.color,
            data.id,
          );
        }).toList());
  }
}
