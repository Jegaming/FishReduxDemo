import 'package:fish_redux/fish_redux.dart';

enum EntranceAction { action, openGrid }

class EntranceActionCreator {
  static Action onAction() {
    return const Action(EntranceAction.action);
  }

  static Action onOpenGrid() {
    return const Action(EntranceAction.openGrid);
  }
}

