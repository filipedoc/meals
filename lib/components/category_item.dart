import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import '../models/category.dart';
import '../screens/meals_list_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  // ignore: use_key_in_widget_constructors
  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) {
        return MealsListScreen(category);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return _selectCategory(context);
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline5,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
