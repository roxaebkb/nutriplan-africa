import '../models/menu_day.dart';
import '../models/meal_option.dart';

final List<MenuDay> monthlyMenu = List.generate(30, (index) {
  final day = index + 1;

  final breakfasts = [
    'Porridge and Bread',
    'Tea and Chapati',
    'Milk and Sweet Potato',
    'Porridge and Banana',
    'Bread and Eggs',
  ];

  final lunches = [
    'Rice and Beans',
    'Ugali, Vegetables and Meat',
    'Fufu and Fish',
    'Rice and Chicken',
    'Plantains and Sauce',
  ];

  final dinners = [
    'Fufu and Vegetables',
    'Rice and Fish',
    'Potatoes and Meat',
    'Ugali and Sukuma Wiki',
    'Beans and Avocado',
  ];

  return MenuDay(
    day: day,
    meals: [
      MealOption(mealType: 'Breakfast', dietName: 'Regular', title: breakfasts[index % breakfasts.length], description: 'Standard meal for students.'),
      MealOption(mealType: 'Breakfast', dietName: 'Diabetic', title: 'Sugar-free porridge and egg', description: 'Reduced sugar option.'),
      MealOption(mealType: 'Breakfast', dietName: 'Vegetarian', title: breakfasts[(index + 1) % breakfasts.length], description: 'No meat or fish.'),
      MealOption(mealType: 'Breakfast', dietName: 'Peanut Free', title: breakfasts[(index + 2) % breakfasts.length], description: 'Prepared without peanuts.'),

      MealOption(mealType: 'Lunch', dietName: 'Regular', title: lunches[index % lunches.length], description: 'Main standard meal.'),
      MealOption(mealType: 'Lunch', dietName: 'Diabetic', title: 'Small rice portion, vegetables and fish', description: 'Controlled portion for diabetic students.'),
      MealOption(mealType: 'Lunch', dietName: 'Vegetarian', title: 'Rice, beans and vegetables', description: 'Vegetarian meal.'),
      MealOption(mealType: 'Lunch', dietName: 'Peanut Free', title: lunches[(index + 1) % lunches.length], description: 'Prepared without peanut sauce.'),

      MealOption(mealType: 'Dinner', dietName: 'Regular', title: dinners[index % dinners.length], description: 'Standard dinner.'),
      MealOption(mealType: 'Dinner', dietName: 'Diabetic', title: 'Vegetables, fish and a small portion of starch', description: 'Light dinner option.'),
      MealOption(mealType: 'Dinner', dietName: 'Vegetarian', title: 'Fufu, vegetables and beans', description: 'Vegetarian dinner.'),
      MealOption(mealType: 'Dinner', dietName: 'Peanut Free', title: dinners[(index + 2) % dinners.length], description: 'Peanut free dinner.'),
    ],
  );
});
