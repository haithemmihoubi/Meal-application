import 'package:flutter/material.dart';

class CategoryMealScreen extends StatefulWidget {
  CategoryMealScreen({Key? key}) : super(key: key);
  static const routeName = 'category_meals';

  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final categoryID = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(categoryTitle),
      ),
    );
  }
}
