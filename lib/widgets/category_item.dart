import 'package:flutter/material.dart';
import 'package:mealapp/screens/category_melas_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItem(
      {required this.id, required this.title, this.color = Colors.orange});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealScreen.routeName, arguments: {
      ' id': id,
      'title': title,
      'color': color,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.amber,
      onTap: () => selectCategory(context),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              colors: [color.withOpacity(0.5), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
    );
  }
}
