import 'package:flutter/material.dart';

void main() {
  runApp(const NutriPlanApp());
}

class NutriPlanApp extends StatelessWidget {
  const NutriPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NutriPlan Africa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class AppColors {
  static const background = Color(0xFFFFF8F0);
  static const primary = Color(0xFFD9825B);
  static const secondary = Color(0xFFFFB26B);
  static const dark = Color(0xFF3B2418);
  static const text = Color(0xFF806554);
  static const soft = Color(0xFFFFE5D7);
  static const green = Color(0xFF5E9C76);
  static const cream = Color(0xFFFFF1E6);
}

class Meal {
  final String title;
  final String mealType;
  final String time;
  final int calories;
  final String emoji;
  final IconData icon;
  final List<String> ingredients;
  final List<String> steps;
  final String nutrition;

  const Meal({
    required this.title,
    required this.mealType,
    required this.time,
    required this.calories,
    required this.emoji,
    required this.icon,
    required this.ingredients,
    required this.steps,
    required this.nutrition,
  });

  Meal copyForType(String type) {
    return Meal(
      title: title,
      mealType: type,
      time: time,
      calories: calories,
      emoji: emoji,
      icon: icon,
      ingredients: ingredients,
      steps: steps,
      nutrition: nutrition,
    );
  }
}

class DayPlan {
  final int day;
  final Meal breakfast;
  final Meal lunch;
  final Meal dinner;

  const DayPlan({
    required this.day,
    required this.breakfast,
    required this.lunch,
    required this.dinner,
  });

  List<Meal> get meals => [breakfast, lunch, dinner];
}

class DietCategory {
  final String title;
  final String subtitle;
  final IconData icon;
  final List<DayPlan> plans;

  const DietCategory({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.plans,
  });
}

final List<Meal> breakfastMeals = [
  Meal(
    title: 'Oat Porridge with Banana and Milk',
    mealType: 'Breakfast',
    time: '15 min',
    calories: 430,
    emoji: '🥣',
    icon: Icons.breakfast_dining,
    ingredients: ['Rolled oats', 'Milk', 'Banana', 'Peanut butter', 'A little honey'],
    steps: ['Boil milk or water in a small pot.', 'Add oats and stir until soft.', 'Slice the banana on top.', 'Add peanut butter and a little honey.', 'Serve warm.'],
    nutrition: 'A warm energy-rich breakfast with carbohydrates, protein, potassium, and healthy fats.',
  ),
  Meal(
    title: 'Chapati with Scrambled Eggs',
    mealType: 'Breakfast',
    time: '20 min',
    calories: 520,
    emoji: '🍳',
    icon: Icons.egg_alt,
    ingredients: ['Chapati', 'Eggs', 'Tomato', 'Onion', 'Tea with milk'],
    steps: ['Chop the tomato and onion.', 'Beat the eggs in a bowl.', 'Cook the eggs with tomato and onion.', 'Warm the chapati.', 'Serve with tea or milk.'],
    nutrition: 'A filling breakfast with protein, carbohydrates, and moderate fats.',
  ),
  Meal(
    title: 'Sweet Potatoes with Milk',
    mealType: 'Breakfast',
    time: '25 min',
    calories: 390,
    emoji: '🍠',
    icon: Icons.local_cafe,
    ingredients: ['Sweet potatoes', 'Milk', 'Roasted peanuts', 'A pinch of salt'],
    steps: ['Wash and peel the sweet potatoes.', 'Boil until soft.', 'Warm the milk separately.', 'Serve the sweet potatoes with milk and peanuts.'],
    nutrition: 'A gentle breakfast with slow-release energy, fiber, and calcium.',
  ),
  Meal(
    title: 'Millet Porridge with Groundnuts',
    mealType: 'Breakfast',
    time: '18 min',
    calories: 410,
    emoji: '🌾',
    icon: Icons.rice_bowl,
    ingredients: ['Millet flour', 'Water', 'Milk', 'Groundnuts', 'A little sugar'],
    steps: ['Mix millet flour with cold water.', 'Pour into boiling water while stirring.', 'Cook until smooth.', 'Add milk and groundnuts.', 'Serve warm.'],
    nutrition: 'Good source of energy, minerals, and plant-based protein.',
  ),
  Meal(
    title: 'Plantain and Omelette',
    mealType: 'Breakfast',
    time: '30 min',
    calories: 560,
    emoji: '🍌',
    icon: Icons.breakfast_dining,
    ingredients: ['Ripe plantain', 'Eggs', 'Tomato', 'Onion', 'Vegetable oil'],
    steps: ['Slice and cook the plantain.', 'Beat eggs with tomato and onion.', 'Cook the omelette.', 'Serve together while hot.'],
    nutrition: 'A high-energy meal with protein and potassium.',
  ),
  Meal(
    title: 'Avocado Toast with Boiled Eggs',
    mealType: 'Breakfast',
    time: '15 min',
    calories: 470,
    emoji: '🥑',
    icon: Icons.egg,
    ingredients: ['Bread', 'Avocado', 'Boiled eggs', 'Tomato', 'Black pepper'],
    steps: ['Toast the bread.', 'Mash avocado with a little salt.', 'Boil the eggs.', 'Add tomato slices.', 'Serve immediately.'],
    nutrition: 'Balanced breakfast with protein, healthy fats, and fiber.',
  ),
];

final List<Meal> lunchMeals = [
  Meal(
    title: 'Kenyan Pilau with Chicken',
    mealType: 'Lunch',
    time: '55 min',
    calories: 720,
    emoji: '🍗',
    icon: Icons.restaurant,
    ingredients: ['Rice', 'Chicken', 'Pilau spices', 'Onion', 'Garlic', 'Tomatoes'],
    steps: ['Brown the onions and garlic.', 'Add chicken and cook until sealed.', 'Add tomatoes and pilau spices.', 'Add rice and water.', 'Simmer until the rice is cooked.'],
    nutrition: 'A balanced lunch with carbohydrates, protein, and warming spices.',
  ),
  Meal(
    title: 'Ugali with Sukuma Wiki and Beef Stew',
    mealType: 'Lunch',
    time: '50 min',
    calories: 760,
    emoji: '🥬',
    icon: Icons.dinner_dining,
    ingredients: ['Maize flour', 'Sukuma wiki', 'Beef', 'Tomato', 'Onion'],
    steps: ['Prepare ugali with maize flour and water.', 'Cook beef with tomato and onion.', 'Stir-fry sukuma wiki lightly.', 'Serve everything together.'],
    nutrition: 'A strong meal with iron, protein, fiber, and long-lasting energy.',
  ),
  Meal(
    title: 'Rice and Beans with Avocado',
    mealType: 'Lunch',
    time: '45 min',
    calories: 650,
    emoji: '🥑',
    icon: Icons.rice_bowl,
    ingredients: ['Rice', 'Beans', 'Tomato', 'Onion', 'Avocado'],
    steps: ['Cook the rice.', 'Simmer beans with tomato and onion.', 'Slice avocado.', 'Serve rice, beans, and avocado together.'],
    nutrition: 'A budget-friendly meal with plant protein, fiber, and healthy fats.',
  ),
  Meal(
    title: 'Jollof Rice with Grilled Chicken',
    mealType: 'Lunch',
    time: '60 min',
    calories: 780,
    emoji: '🍚',
    icon: Icons.food_bank,
    ingredients: ['Rice', 'Chicken', 'Tomato paste', 'Bell pepper', 'Onion', 'Spices'],
    steps: ['Blend tomato, pepper, and onion.', 'Cook the sauce until thick.', 'Add rice and stock.', 'Grill the chicken separately.', 'Serve hot.'],
    nutrition: 'A rich West African-style lunch with energy and protein.',
  ),
  Meal(
    title: 'Matoke with Peanut Sauce',
    mealType: 'Lunch',
    time: '50 min',
    calories: 680,
    emoji: '🍌',
    icon: Icons.eco,
    ingredients: ['Green bananas', 'Peanut paste', 'Tomato', 'Onion', 'Vegetables'],
    steps: ['Peel and boil the green bananas.', 'Prepare peanut sauce with tomato and onion.', 'Add vegetables.', 'Serve the sauce over matoke.'],
    nutrition: 'A nourishing lunch with potassium, healthy fats, and fiber.',
  ),
  Meal(
    title: 'Fish Curry with Rice',
    mealType: 'Lunch',
    time: '45 min',
    calories: 690,
    emoji: '🐟',
    icon: Icons.set_meal,
    ingredients: ['Fish fillets', 'Rice', 'Coconut milk', 'Tomato', 'Curry spices'],
    steps: ['Cook the rice.', 'Prepare tomato and coconut curry sauce.', 'Add fish and simmer gently.', 'Serve with rice.'],
    nutrition: 'Good source of protein, omega fats, and energy.',
  ),
];

final List<Meal> dinnerMeals = [
  Meal(
    title: 'Cassava Leaves with Smoked Fish and Fufu',
    mealType: 'Dinner',
    time: '60 min',
    calories: 730,
    emoji: '🥘',
    icon: Icons.soup_kitchen,
    ingredients: ['Cassava leaves', 'Smoked fish', 'Palm oil', 'Onion', 'Fufu'],
    steps: ['Wash and prepare the cassava leaves.', 'Cook with onion and seasoning.', 'Add smoked fish.', 'Simmer until tender.', 'Serve with fufu.'],
    nutrition: 'A hearty dinner with fiber, minerals, and protein.',
  ),
  Meal(
    title: 'Grilled Tilapia with Vegetables',
    mealType: 'Dinner',
    time: '45 min',
    calories: 540,
    emoji: '🐟',
    icon: Icons.set_meal,
    ingredients: ['Tilapia', 'Lemon', 'Tomatoes', 'Onion', 'Leafy greens'],
    steps: ['Season the fish with lemon and spices.', 'Grill until cooked.', 'Prepare vegetables on the side.', 'Serve warm.'],
    nutrition: 'A lighter dinner rich in protein and micronutrients.',
  ),
  Meal(
    title: 'Peanut Chicken Stew',
    mealType: 'Dinner',
    time: '55 min',
    calories: 760,
    emoji: '🥜',
    icon: Icons.restaurant_menu,
    ingredients: ['Chicken', 'Peanut paste', 'Tomato', 'Onion', 'Rice or fufu'],
    steps: ['Cook onion and tomato.', 'Add chicken pieces.', 'Stir in peanut paste and water.', 'Simmer until thick.', 'Serve with rice or fufu.'],
    nutrition: 'Energy-dense dinner with protein and healthy fats.',
  ),
  Meal(
    title: 'Vegetable Soup with Smoked Fish',
    mealType: 'Dinner',
    time: '35 min',
    calories: 430,
    emoji: '🍲',
    icon: Icons.ramen_dining,
    ingredients: ['Leafy greens', 'Smoked fish', 'Tomato', 'Onion', 'Carrot'],
    steps: ['Boil water with tomato and onion.', 'Add vegetables.', 'Add smoked fish.', 'Simmer gently.', 'Serve hot.'],
    nutrition: 'Light, warm, and rich in vitamins.',
  ),
  Meal(
    title: 'Plantain with Goat Meat Stew',
    mealType: 'Dinner',
    time: '65 min',
    calories: 820,
    emoji: '🍖',
    icon: Icons.dinner_dining,
    ingredients: ['Plantain', 'Goat meat', 'Tomato', 'Onion', 'Spices'],
    steps: ['Boil or fry the plantain.', 'Cook goat meat until tender.', 'Prepare tomato stew.', 'Combine and simmer.', 'Serve hot.'],
    nutrition: 'A rich meal for high energy and protein needs.',
  ),
  Meal(
    title: 'Mukimo with Beef Stew',
    mealType: 'Dinner',
    time: '60 min',
    calories: 790,
    emoji: '🥔',
    icon: Icons.food_bank,
    ingredients: ['Potatoes', 'Green peas', 'Maize', 'Beef', 'Tomatoes'],
    steps: ['Boil potatoes, peas, and maize.', 'Mash them together.', 'Prepare beef stew.', 'Serve mukimo with stew.'],
    nutrition: 'A filling meal with carbohydrates, protein, and vegetables.',
  ),
];

List<DayPlan> buildPlan({
  required List<Meal> breakfasts,
  required List<Meal> lunches,
  required List<Meal> dinners,
}) {
  return List.generate(30, (index) {
    return DayPlan(
      day: index + 1,
      breakfast: breakfasts[index % breakfasts.length].copyForType('Breakfast'),
      lunch: lunches[index % lunches.length].copyForType('Lunch'),
      dinner: dinners[index % dinners.length].copyForType('Dinner'),
    );
  });
}

final List<DayPlan> monthlyPlans = buildPlan(
  breakfasts: breakfastMeals,
  lunches: lunchMeals,
  dinners: dinnerMeals,
);

final List<DietCategory> dietCategories = [
  DietCategory(
    title: 'Diabetes Friendly',
    subtitle: '30 days of lower sugar meals with fiber and balanced portions',
    icon: Icons.bloodtype,
    plans: buildPlan(
      breakfasts: [breakfastMeals[2], breakfastMeals[3], breakfastMeals[5]],
      lunches: [lunchMeals[2], lunchMeals[5], lunchMeals[4]],
      dinners: [dinnerMeals[1], dinnerMeals[3], dinnerMeals[5]],
    ),
  ),
  DietCategory(
    title: 'Heart Healthy',
    subtitle: '30 days of lighter meals with vegetables and less oil',
    icon: Icons.favorite,
    plans: buildPlan(
      breakfasts: [breakfastMeals[0], breakfastMeals[2], breakfastMeals[5]],
      lunches: [lunchMeals[2], lunchMeals[5], lunchMeals[4]],
      dinners: [dinnerMeals[1], dinnerMeals[3], dinnerMeals[5]],
    ),
  ),
  DietCategory(
    title: 'Weight Loss',
    subtitle: '30 days of simple meals with vegetables and controlled portions',
    icon: Icons.monitor_weight,
    plans: buildPlan(
      breakfasts: [breakfastMeals[2], breakfastMeals[3], breakfastMeals[5]],
      lunches: [lunchMeals[2], lunchMeals[5], lunchMeals[1]],
      dinners: [dinnerMeals[1], dinnerMeals[3], dinnerMeals[5]],
    ),
  ),
  DietCategory(
    title: 'Weight Gain',
    subtitle: '30 days of energy-rich meals for healthy weight gain',
    icon: Icons.fitness_center,
    plans: buildPlan(
      breakfasts: [breakfastMeals[1], breakfastMeals[4], breakfastMeals[5], breakfastMeals[0]],
      lunches: [lunchMeals[0], lunchMeals[1], lunchMeals[3]],
      dinners: [dinnerMeals[2], dinnerMeals[4], dinnerMeals[5]],
    ),
  ),
  DietCategory(
    title: 'Muscle Building',
    subtitle: '30 days of protein-focused meals with strong carbohydrates',
    icon: Icons.sports_gymnastics,
    plans: buildPlan(
      breakfasts: [breakfastMeals[1], breakfastMeals[4], breakfastMeals[5]],
      lunches: [lunchMeals[1], lunchMeals[5], lunchMeals[0]],
      dinners: [dinnerMeals[2], dinnerMeals[4], dinnerMeals[5]],
    ),
  ),
];

final Set<String> favoriteMealTitles = {};

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const SizedBox(height: 24),
            Container(
              height: 290,
              decoration: BoxDecoration(
                color: AppColors.soft,
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Center(child: Text('🍲', style: TextStyle(fontSize: 120))),
            ),
            const SizedBox(height: 32),
            const Text(
              'Plan your meals\nfor 30 days',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.dark,
                fontSize: 40,
                fontWeight: FontWeight.w900,
                height: 1.1,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'African meal ideas for breakfast, lunch, and dinner. Save your favorites and explore 30-day special diet plans.',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.text, fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 28),
            const FeatureCard(
              icon: Icons.calendar_month,
              title: '30-day menu',
              subtitle: 'A complete monthly food plan',
            ),
            const SizedBox(height: 14),
            const FeatureCard(
              icon: Icons.health_and_safety,
              title: 'Special diet plans',
              subtitle: 'Each diet includes 30 full days',
            ),
            const SizedBox(height: 28),
            PrimaryButton(
              text: 'Get Started',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const MainNavigationScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const MonthlyMenuScreen(),
      const SpecialDietsScreen(),
      FavoritesScreen(onChanged: () => setState(() {})),
      const OrdersScreen(),
    ];

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        backgroundColor: AppColors.background,
        indicatorColor: AppColors.soft,
        onDestinationSelected: (index) => setState(() => currentIndex = index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Menu'),
          NavigationDestination(icon: Icon(Icons.health_and_safety), label: 'Diets'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Saved'),
          NavigationDestination(icon: Icon(Icons.shopping_bag), label: 'Orders'),
        ],
      ),
    );
  }
}

class MonthlyMenuScreen extends StatefulWidget {
  const MonthlyMenuScreen({super.key});

  @override
  State<MonthlyMenuScreen> createState() => _MonthlyMenuScreenState();
}

class _MonthlyMenuScreenState extends State<MonthlyMenuScreen> {
  int selectedDayIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('My Monthly Menu', style: TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: AppColors.dark),
          ),
        ],
      ),
      body: DayPlanBody(
        plans: monthlyPlans,
        selectedDayIndex: selectedDayIndex,
        onDaySelected: (index) => setState(() => selectedDayIndex = index),
        title: "Today's meals",
      ),
    );
  }
}

class DayPlanBody extends StatelessWidget {
  final List<DayPlan> plans;
  final int selectedDayIndex;
  final ValueChanged<int> onDaySelected;
  final String title;

  const DayPlanBody({
    super.key,
    required this.plans,
    required this.selectedDayIndex,
    required this.onDaySelected,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final plan = plans[selectedDayIndex];

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        SizedBox(
          height: 76,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: plans.length,
            itemBuilder: (context, index) {
              final isActive = selectedDayIndex == index;
              return GestureDetector(
                onTap: () => onDaySelected(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  width: 62,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: isActive ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(isActive ? 24 : 8),
                        blurRadius: isActive ? 14 : 8,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Day\n${index + 1}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isActive ? Colors.white : AppColors.dark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 24),
        ProgressCard(day: plan.day),
        const SizedBox(height: 26),
        Text(title, style: const TextStyle(color: AppColors.dark, fontSize: 24, fontWeight: FontWeight.w900)),
        const SizedBox(height: 14),
        ...plan.meals.map((meal) => MealCard(meal: meal)),
      ],
    );
  }
}

class ProgressCard extends StatelessWidget {
  final int day;

  const ProgressCard({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(color: AppColors.dark, borderRadius: BorderRadius.circular(28)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Month progress', style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 8),
          Text('Day $day of 30', style: const TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w900)),
          const SizedBox(height: 18),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: LinearProgressIndicator(
              value: day / 30,
              minHeight: 10,
              color: AppColors.secondary,
              backgroundColor: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}

class MealCard extends StatefulWidget {
  final Meal meal;
  final VoidCallback? onFavoriteChanged;

  const MealCard({super.key, required this.meal, this.onFavoriteChanged});

  @override
  State<MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  @override
  Widget build(BuildContext context) {
    final isFavorite = favoriteMealTitles.contains(widget.meal.title);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => RecipeDetailScreen(meal: widget.meal)),
        ).then((_) {
          if (mounted) {
            setState(() {});
            widget.onFavoriteChanged?.call();
          }
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26),
          boxShadow: [
            BoxShadow(color: Colors.black.withAlpha(12), blurRadius: 18, offset: const Offset(0, 8)),
          ],
        ),
        child: Row(
          children: [
            Hero(
              tag: widget.meal.title + widget.meal.mealType,
              child: Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(color: AppColors.soft, borderRadius: BorderRadius.circular(22)),
                child: Center(child: Text(widget.meal.emoji, style: const TextStyle(fontSize: 38))),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.meal.mealType, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w800)),
                  const SizedBox(height: 4),
                  Text(widget.meal.title, style: const TextStyle(color: AppColors.dark, fontSize: 17, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 5),
                  Text('${widget.meal.time} • ${widget.meal.calories} kcal', style: const TextStyle(color: AppColors.text)),
                ],
              ),
            ),
            IconButton(
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border, color: isFavorite ? AppColors.primary : const Color(0xFFE0CFC4)),
              onPressed: () {
                setState(() {
                  if (isFavorite) {
                    favoriteMealTitles.remove(widget.meal.title);
                  } else {
                    favoriteMealTitles.add(widget.meal.title);
                  }
                });
                widget.onFavoriteChanged?.call();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeDetailScreen extends StatefulWidget {
  final Meal meal;

  const RecipeDetailScreen({super.key, required this.meal});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final isFavorite = favoriteMealTitles.contains(widget.meal.title);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.dark),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(widget.meal.mealType, style: const TextStyle(color: AppColors.dark, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border, color: AppColors.primary),
            onPressed: () {
              setState(() {
                if (isFavorite) {
                  favoriteMealTitles.remove(widget.meal.title);
                } else {
                  favoriteMealTitles.add(widget.meal.title);
                }
              });
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(22),
        children: [
          Hero(
            tag: widget.meal.title + widget.meal.mealType,
            child: Container(
              height: 230,
              decoration: BoxDecoration(color: AppColors.soft, borderRadius: BorderRadius.circular(34)),
              child: Center(child: Text(widget.meal.emoji, style: const TextStyle(fontSize: 100))),
            ),
          ),
          const SizedBox(height: 22),
          Text(widget.meal.title, style: const TextStyle(color: AppColors.dark, fontSize: 30, fontWeight: FontWeight.w900)),
          const SizedBox(height: 8),
          Text('${widget.meal.time} • ${widget.meal.calories} kcal', style: const TextStyle(color: AppColors.primary, fontSize: 17, fontWeight: FontWeight.w800)),
          const SizedBox(height: 22),
          InfoSection(title: 'Ingredients', items: widget.meal.ingredients),
          InfoSection(title: 'Preparation steps', items: widget.meal.steps),
          Container(
            margin: const EdgeInsets.only(bottom: 18),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Nutrition note', style: TextStyle(color: AppColors.dark, fontSize: 20, fontWeight: FontWeight.w900)),
                const SizedBox(height: 8),
                Text(widget.meal.nutrition, style: const TextStyle(color: AppColors.text, fontSize: 16, height: 1.5)),
              ],
            ),
          ),
          PrimaryButton(
            text: 'Mark as Cooked',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Meal marked as cooked.')));
            },
          ),
        ],
      ),
    );
  }
}

class SpecialDietsScreen extends StatelessWidget {
  const SpecialDietsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('Special Diet Plans', style: TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: dietCategories.map((diet) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => DietThirtyDayScreen(diet: diet)));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 18),
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(26)),
              child: Row(
                children: [
                  CircleAvatar(radius: 28, backgroundColor: AppColors.soft, child: Icon(diet.icon, color: AppColors.primary)),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(diet.title, style: const TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900, fontSize: 18)),
                        const SizedBox(height: 4),
                        Text(diet.subtitle, style: const TextStyle(color: AppColors.text, height: 1.3)),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.text),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class DietThirtyDayScreen extends StatefulWidget {
  final DietCategory diet;

  const DietThirtyDayScreen({super.key, required this.diet});

  @override
  State<DietThirtyDayScreen> createState() => _DietThirtyDayScreenState();
}

class _DietThirtyDayScreenState extends State<DietThirtyDayScreen> {
  int selectedDayIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.dark),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(widget.diet.title, style: const TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(28)),
              child: Row(
                children: [
                  Icon(widget.diet.icon, color: Colors.white, size: 42),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      widget.diet.subtitle,
                      style: const TextStyle(color: Colors.white, fontSize: 16, height: 1.4, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: DayPlanBody(
              plans: widget.diet.plans,
              selectedDayIndex: selectedDayIndex,
              onDaySelected: (index) => setState(() => selectedDayIndex = index),
              title: 'Diet meals',
            ),
          ),
        ],
      ),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  final VoidCallback onChanged;

  const FavoritesScreen({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final allMeals = [...breakfastMeals, ...lunchMeals, ...dinnerMeals];
    final savedMeals = allMeals.where((meal) => favoriteMealTitles.contains(meal.title)).toList();

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('Saved Recipes', style: TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900)),
      ),
      body: savedMeals.isEmpty
          ? const EmptyState(
              icon: Icons.favorite_border,
              title: 'No saved recipes yet',
              message: 'Tap the heart icon on any meal to save it here.',
            )
          : ListView(
              padding: const EdgeInsets.all(20),
              children: savedMeals.map((meal) => MealCard(meal: meal, onFavoriteChanged: onChanged)).toList(),
            ),
    );
  }
}

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final packs = [
      ['Prepared Meal Pack', 'Ready-to-eat African meals for busy days', 'KES 850'],
      ['Student Food Pack', 'Affordable weekly food pack for students', 'KES 1,500'],
      ['Family Weekly Pack', 'Complete ingredients and meals for families', 'KES 4,800'],
      ['Fresh Ingredients Basket', 'Vegetables, grains, fish, and spices', 'KES 2,200'],
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text('Food Orders', style: TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: packs.map((pack) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(26)),
            child: Row(
              children: [
                const CircleAvatar(radius: 28, backgroundColor: AppColors.soft, child: Icon(Icons.shopping_bag, color: AppColors.primary)),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(pack[0], style: const TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900, fontSize: 17)),
                      const SizedBox(height: 4),
                      Text(pack[1], style: const TextStyle(color: AppColors.text, height: 1.3)),
                      const SizedBox(height: 6),
                      Text(pack[2], style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${pack[0]} added to your order.')));
                  },
                  child: const Text('Order'),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  final String title;
  final List<String> items;

  const InfoSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: AppColors.dark, fontSize: 20, fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(color: AppColors.primary, fontSize: 18)),
                  Expanded(child: Text(item, style: const TextStyle(color: AppColors.text, fontSize: 16, height: 1.4))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const FeatureCard({super.key, required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22)),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: AppColors.soft, child: Icon(icon, color: AppColors.primary)),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: AppColors.dark, fontWeight: FontWeight.w900, fontSize: 16)),
                const SizedBox(height: 3),
                Text(subtitle, style: const TextStyle(color: AppColors.text)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String message;

  const EmptyState({super.key, required this.icon, required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: AppColors.primary, size: 90),
            const SizedBox(height: 18),
            Text(title, style: const TextStyle(color: AppColors.dark, fontSize: 22, fontWeight: FontWeight.w900)),
            const SizedBox(height: 8),
            Text(message, textAlign: TextAlign.center, style: const TextStyle(color: AppColors.text, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        ),
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
