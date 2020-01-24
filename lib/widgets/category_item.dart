import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import '../screens/Category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category catdata;
  CategoryItem(
    this.catdata,
  );
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: catdata,
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Text("Hello");
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      splashColor: Colors.tealAccent,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          catdata.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              catdata.color.withOpacity(0.1),
              catdata.color, // THIS MEANS FULL OPACITY
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
