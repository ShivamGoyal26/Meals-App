import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import './screens/categories_screen.dart';
import './screens/Category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Meal',
      routes: {
        CategoryMealsScreen.routeName: (_) => CategoryMealsScreen(),
        "/start": (_) => CategoriesScreen(),
        MealDetailScreen.routeName: (_) => MealDetailScreen(),
      },
      initialRoute: "/start",
      theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: Colors.tealAccent,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'OpenSans',
          
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(
                  
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                body2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                title: TextStyle(
                  fontSize: 18,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.normal,
                ),
              )),
      
    );
  }
}
