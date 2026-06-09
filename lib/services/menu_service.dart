import '../data/menu_data.dart';
import '../models/menu_day.dart';

class MenuService {
  List<MenuDay> getAllMenus() {
    return monthlyMenu;
  }

  MenuDay getMenuByDay(int day) {
    return monthlyMenu.firstWhere((menu) => menu.day == day);
  }
}
