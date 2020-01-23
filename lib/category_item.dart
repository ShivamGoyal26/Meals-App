import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  CategoryItem(
    this.title,
    this.color,
  );
  @override
  Widget build(BuildContext context) {
    // return Text("Hello");
    return InkWell(
      onTap: () {},
      splashColor: Colors.tealAccent,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.1),
              color, // THIS MEANS FULL OPACITY
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
