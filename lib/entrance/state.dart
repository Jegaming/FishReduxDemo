import 'dart:ui';

import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';

class EntranceState implements Cloneable<EntranceState>, GlobalBaseState {

  @override
  Color themeColor;

  @override
  EntranceState clone() {
    return EntranceState()
    ..themeColor = themeColor;
  }
}

EntranceState initState(Map<String, dynamic> args) {
  return EntranceState();
}
