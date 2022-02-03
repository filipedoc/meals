import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class MealsListScreen extends StatelessWidget {
  const MealsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final mealsList = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: mealsList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(mealsList[index].title);
        },
      ),
    );
  }
}
