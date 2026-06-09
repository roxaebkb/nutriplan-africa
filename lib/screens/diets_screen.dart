import 'package:flutter/material.dart';
import '../data/diet_data.dart';
import '../theme/app_colors.dart';
import '../widgets/diet_card.dart';

class DietsScreen extends StatelessWidget {
  const DietsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          'Subscribers by Diet',
          style: TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ...dietTypes.map((diet) => DietCard(diet: diet)),
        ],
      ),
    );
  }
}
