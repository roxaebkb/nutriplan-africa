import 'package:flutter/material.dart';
import '../models/diet_type.dart';
import '../theme/app_colors.dart';

class DietCard extends StatelessWidget {
  final DietType diet;

  const DietCard({
    super.key,
    required this.diet,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.soft,
            child: Icon(diet.icon, color: AppColors.primary),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              diet.name,
              style: const TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.w900,
                fontSize: 17,
              ),
            ),
          ),
          Text(
            '${diet.subscribers} students',
            style: const TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
