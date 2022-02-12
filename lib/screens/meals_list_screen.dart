import 'package:flutter/material.dart';
import '../models/category.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class MealsListScreen extends StatelessWidget {
  final List<Meal> meals;

  // ignore: use_key_in_widget_constructors
  const MealsListScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final mealsList = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: mealsList.length,
        itemBuilder: (BuildContext context, int index) {
          return MealItem(
            mealsList[index],
          );
        },
      ),
    );
  }
}
