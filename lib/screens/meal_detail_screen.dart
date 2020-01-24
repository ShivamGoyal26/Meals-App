import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/category-meals-detail";
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fuck",
        ),
      ),
      body: Center(
        child: Text(
          "Meal detail - $mealId",
        ),
      ),
    );
  }
}
