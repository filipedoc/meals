import 'package:flutter/material.dart';
import '../models/category.dart';

class MealsListScreen extends StatelessWidget {
  final Category category;

  // ignore: use_key_in_widget_constructors
  MealsListScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Text('Meals by category ${category.id}'),
    );
  }
}
