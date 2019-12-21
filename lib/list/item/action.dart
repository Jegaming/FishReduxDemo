import 'package:fish_redux/fish_redux.dart';

enum ItemAction { action, onThemeChange }

class ItemActionCreator {
  static Action onAction() {
    return const Action(ItemAction.action);
  }

  static Action onThemeChange() {
    return const Action(ItemAction.onThemeChange);
  }
}
