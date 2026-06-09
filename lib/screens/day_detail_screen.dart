import 'package:flutter/material.dart';
import '../models/menu_day.dart';
import '../theme/app_colors.dart';
import '../widgets/kitchen_section.dart';

class DayDetailScreen extends StatelessWidget {
  final MenuDay menuDay;

  const DayDetailScreen({
    super.key,
    required this.menuDay,
  });

  @override
  Widget build(BuildContext context) {
    final breakfastMeals = menuDay.meals.where((meal) => meal.mealType == 'Breakfast').toList();
    final lunchMeals = menuDay.meals.where((meal) => meal.mealType == 'Lunch').toList();
    final dinnerMeals = menuDay.meals.where((meal) => meal.mealType == 'Dinner').toList();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          'Menu - Day ${menuDay.day}',
          style: const TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          KitchenSection(title: 'Breakfast', meals: breakfastMeals),
          KitchenSection(title: 'Lunch', meals: lunchMeals),
          KitchenSection(title: 'Dinner', meals: dinnerMeals),
        ],
      ),
    );
  }
}
