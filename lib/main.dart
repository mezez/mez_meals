import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_mez_meals/screens/filters_screen.dart';
import 'package:new_mez_meals/screens/meal_detail_screen.dart';
import 'package:new_mez_meals/screens/tabs_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MezMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
            body2: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
            title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyHomePage(title: 'Mez Meals'),
      // home: CategoriesScreen(),
      initialRoute: '/', //default is '/'
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      //this is reached when going to a named route with pushname that is note registered in the routes table
      //suitable for dynamic routes or routes generated during the lifecycle of the app that cannot otherwise be predetermined
      onGenerateRoute: (settings) {
        print(settings.arguments);
        //return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),)
      },
      //reached as a last resort/fallback if all other routes are not reached. This is like a 404 page on the web
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
