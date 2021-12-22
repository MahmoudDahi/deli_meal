import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;

  FavoritesScreen(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    return favoritesMeals.isEmpty
        ? const Center(
            child: Text('You have no favorite yet - start adding some'))
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return MealItem(
                id: favoritesMeals[index].id,
                title: favoritesMeals[index].title,
                imageUrl: favoritesMeals[index].imageUrl,
                duration: favoritesMeals[index].duration,
                affordability: favoritesMeals[index].affordability,
                complexity: favoritesMeals[index].complexity,
              );
            },
            itemCount: favoritesMeals.length,
          );
  }
}
