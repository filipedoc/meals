import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  // ignore: use_key_in_widget_constructors
  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(category.title));
  }
}
