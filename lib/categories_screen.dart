import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Meals",
        ),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map(
          (catData) {
            CategoryItem(
              catData.title,
              catData.color,
            );
          },
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          // THIS IS THE WIDTH OF THE EACH ITEM IN THE GRID VIEW
          childAspectRatio: 3 / 2,
          // THIS IS THE HEIGHT / WIDTH RATIO LIKE 300 HEIGHT AND 200 WIDTH IN THIS CASE
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
