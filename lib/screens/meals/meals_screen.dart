import 'package:flutter/material.dart';
import '../../data/menu_data.dart';
import '../../theme/app_colors.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meals = monthlyMenu.expand((e) => e.meals).toList();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          'Meals',
          style: TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final meal = meals[index];

          return Card(
            child: ListTile(
              leading: const Icon(Icons.restaurant_menu),
              title: Text(meal.title),
              subtitle: Text(meal.dietName),
            ),
          );
        },
      ),
    );
  }
}
