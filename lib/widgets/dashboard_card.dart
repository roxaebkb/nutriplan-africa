import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class DashboardCard extends StatelessWidget {
  final int totalSubscribers;

  const DashboardCard({
    super.key,
    required this.totalSubscribers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: AppColors.dark,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Today Cafeteria', style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 8),
          Text(
            '$totalSubscribers active subscribers',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'The app calculates what to prepare for each diet.',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
