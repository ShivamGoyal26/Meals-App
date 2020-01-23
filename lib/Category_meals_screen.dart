import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import './dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/category-meals";

  @override
  Widget build(BuildContext context) {
    final Category catdata =
        ModalRoute.of(context).settings.arguments as Category;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catdata.id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            catdata.title,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(
              categoryMeals[index].title,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
