import 'package:flutter/material.dart';
import '../data/diet_data.dart';
import '../models/meal_option.dart';
import '../theme/app_colors.dart';

class KitchenSection extends StatelessWidget {
  final String title;
  final List<MealOption> meals;

  const KitchenSection({
    super.key,
    required this.title,
    required this.meals,
  });

  int getPortions(String dietName) {
    return dietTypes.firstWhere((diet) => diet.name == dietName).subscribers;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColors.dark,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 12),
          ...meals.map((meal) {
            final portions = getPortions(meal.dietName);

            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.soft,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(meal.dietName, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 4),
                  Text(meal.title, style: const TextStyle(color: AppColors.dark, fontSize: 17, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 4),
                  Text(meal.description, style: const TextStyle(color: AppColors.text)),
                  const SizedBox(height: 8),
                  Text('Prepare: $portions portions', style: const TextStyle(color: AppColors.green, fontWeight: FontWeight.bold)),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
