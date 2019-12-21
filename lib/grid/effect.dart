import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<GridState> buildEffect() {
  return combineEffects(<Object, Effect<GridState>>{
    Lifecycle.initState: _init,
    GridAction.action: _onAction,
    GridAction.onOpenList: _onOpenList,
  });
}

void _onAction(Action action, Context<GridState> ctx) {
}

void _init(Action action, Context<GridState> ctx) {
  ctx.dispatch(GridActionCreator.onLoadData());
}


void _onOpenList(Action action, Context<GridState> ctx) {
  Navigator.of(ctx.context).pushNamed('list_page', arguments: null);
}