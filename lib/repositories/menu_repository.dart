import '../models/menu_day.dart';
import '../services/menu_service.dart';

class MenuRepository {
  final MenuService _service = MenuService();

  List<MenuDay> getMenus() {
    return _service.getAllMenus();
  }

  MenuDay getDayMenu(int day) {
    return _service.getMenuByDay(day);
  }
}
