import 'package:flutter/material.dart';

import './screens/fileters_screen.dart';
import './screens/tabs_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/meal_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belle\'s Delight',
      theme: ThemeData(
          fontFamily: 'QuickSand',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleLarge: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold)),
          primaryColor: Colors.purple,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
              .copyWith(secondary: Colors.orangeAccent),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1)),
      home: const TabScreen(),
      routes: {
        CategoryMealScreen.routeName: (context) => const CategoryMealScreen(),
        MealDetailsScreen.routeName: (context) => const MealDetailsScreen(),
        FilterScreen.routeName: (context) => const FilterScreen()
      },
    );
  }
}
