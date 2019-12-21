import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<EntranceState> buildReducer() {
  return asReducer(
    <Object, Reducer<EntranceState>>{
      EntranceAction.action: _onAction,
    },
  );
}

EntranceState _onAction(EntranceState state, Action action) {
  final EntranceState newState = state.clone();
  return newState;
}
