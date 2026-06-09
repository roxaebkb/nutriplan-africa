import 'meal_option.dart';

class MenuDay {
  final int day;
  final List<MealOption> meals;

  const MenuDay({
    required this.day,
    required this.meals,
  });
}
