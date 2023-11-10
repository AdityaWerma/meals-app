import 'package:flutter/material.dart';

import 'package:meals_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      Text('No meals.'),
      SizedBox(height: 16),
      Text('Try Selecting a different category.'),
    ],),);


    if(meals.isNotEmpty){
       content = ListView.builder(
         itemCount: meals.length,
         itemBuilder: (ctx, index) => Text(
           meals[index].title,
         ),
       );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content
    );
  }
}
