import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: <Widget>[],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        // THIS IS THE WIDTH OF THE EACH ITEM IN THE GRID VIEW
        childAspectRatio: 3 / 2,
        // THIS IS THE HEIGHT / WIDTH RATIO LIKE 300 HEIGHT AND 200 WIDTH IN THIS CASE
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
