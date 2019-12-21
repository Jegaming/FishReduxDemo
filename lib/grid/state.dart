import 'dart:ui';

import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';
import '../model.dart';

class GridState implements Cloneable<GridState>, GlobalBaseState {

  List<GridModel> models;

  @override
  Color themeColor;

  @override
  GridState clone() {
    return GridState()
    ..models = models
    ..themeColor = themeColor;
  }
}

GridState initState(Map<String, dynamic> args) {
  return GridState();
}
