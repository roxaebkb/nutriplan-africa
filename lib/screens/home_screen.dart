import 'package:flutter/material.dart';
import '../data/diet_data.dart';
import '../theme/app_colors.dart';
import '../widgets/dashboard_card.dart';
import 'diets_screen.dart';
import 'monthly_menu_screen.dart';
import 'students/students_screen.dart';
import 'settings/settings_screen.dart';
import 'dashboard/dashboard_screen.dart';
import 'profile_screen.dart';
import 'reports/reports_screen.dart';
import 'meals/meals_screen.dart';
import 'admin/statistics_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  int get totalSubscribers {
    return dietTypes.fold(0, (total, diet) => total + diet.subscribers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          'NutriPlan Campus',
          style: TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.analytics),
            color: AppColors.dark,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const StatisticsScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DashboardCard(totalSubscribers: totalSubscribers),
          const SizedBox(height: 24),
          _HomeButton(
            icon: Icons.people,
            title: 'Subscribers by Diet',
            subtitle: 'View students grouped by diet type',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DietsScreen()),
              );
            },
          ),
          const SizedBox(height: 14),
          _HomeButton(
            icon: Icons.restaurant_menu,
            title: 'Monthly Menu',
            subtitle: 'View meals for 30 days',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MonthlyMenuScreen()),
              );
            },
          ),
          const SizedBox(height: 14),
          _HomeButton(
            icon: Icons.school,
            title: 'Students',
            subtitle: 'View registered students and their diet types',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const StudentsScreen()),
              );
            },
          ),
          const SizedBox(height: 14),
          _HomeButton(
            icon: Icons.restaurant,
            title: 'Meals',
            subtitle: 'Manage all meals',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MealsScreen()),
              );
            },
          ),
          const SizedBox(height: 14),
          _HomeButton(
            icon: Icons.settings,
            title: 'Settings',
            subtitle: 'Application configuration',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              );
            },
          ),
          const SizedBox(height: 14),
          _HomeButton(
            icon: Icons.bar_chart,
            title: 'Dashboard',
            subtitle: 'Analytics and charts',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const DashboardScreen()),
              );
            },
          ),
          const SizedBox(height: 14),
          _HomeButton(
            icon: Icons.account_circle,
            title: 'Profile',
            subtitle: 'View account and logout',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProfileScreen()),
              );
            },
          ),
          const SizedBox(height: 14),
          _HomeButton(
            icon: Icons.description,
            title: 'Reports',
            subtitle: 'View student and diet reports',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ReportsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _HomeButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _HomeButton({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(26),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.soft,
              child: Icon(icon, color: AppColors.primary),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.dark,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(color: AppColors.text),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: AppColors.primary, size: 18),
          ],
        ),
      ),
    );
  }
}
