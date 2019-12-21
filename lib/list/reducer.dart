import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Reducer<ListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListState>>{
      ListAction.action: _onAction,
      ListAction.initList: _onInitList,
    },
  );
}

ListState _onAction(ListState state, Action action) {
  final ListState newState = state.clone();
  return newState;
}

ListState _onInitList(ListState state, Action action) {
  final List<ItemState> data = action.payload ?? <ItemState>[];
  final ListState newState = state.clone();
  newState.items = data;
  return newState;
}