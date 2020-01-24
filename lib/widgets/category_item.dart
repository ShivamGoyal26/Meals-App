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
        child: Stack(
          children: <Widget>[
             ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    catdata.image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 30,
                  child: Container(
                    width: 150,
                    color: Colors.black54,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      catdata.title,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      // textAlign: TextAlign.end,
                      // softWrap: true,
                      // overflow: TextOverflow.fade,
                    ),
                  ),
                )
               
          ],
        ),
      ),
      // child: Container(
      //   padding: const EdgeInsets.all(15),
      //   child: Text(
      //     catdata.title,
      //     style: Theme.of(context).textTheme.title,
      //   ),
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [
      //         catdata.color.withOpacity(0.1),
      //         catdata.color, // THIS MEANS FULL OPACITY
      //       ],
      //       begin: Alignment.topRight,
      //       end: Alignment.bottomRight,
      //     ),
      //     borderRadius: BorderRadius.circular(15),
      //   ),
      // ),
    );
  }
}
