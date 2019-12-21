import 'dart:ui';

import 'package:fish_demo/list/item/state.dart';
import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';

class ListState implements Cloneable<ListState>, GlobalBaseState {

  List<ItemState> items;

  @override
  Color themeColor;

  @override
  ListState clone() {
    return ListState()
    ..items = items
    ..themeColor = themeColor;
  }


}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
