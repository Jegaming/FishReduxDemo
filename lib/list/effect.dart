import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ListAction.action: _onAction,
    Lifecycle.initState: _onInit,
  });
}

void _onAction(Action action, Context<ListState> ctx) {
}

void _onInit(Action action, Context<ListState> ctx) {
  List<ItemState> mockData = [
    ItemState(
      type: 0,
      title: "标题a",
      content: "a的内容a的内容a的内容a的内容a的内容a的内容a的内容a的内容a的内容a的内容a的内容a的内容a的内容a的内容"),
    ItemState(
      type: 0,
      title: "标题b",
      content: "b的内容b的内容b的内容b的内容b的内容b的内容b的内容b的内容b的内容b的内容b的内容b的内容b的内容"),
    ItemState(
      type: 0,
      title: "标题c",
      content: "c的内容c的内容c的内容c的内容c的内容c的内容c的内容c的内容c的内容c的内容c的内容c的内容c的内容c的内容"),
    ItemState(
      type: 0,
      title: "标题d",
      content: "d的内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
    ItemState(
      type: 0,
      title: "标题e",
      content: "e的内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
    ItemState(
      type: 0,
      title: "标题f",
      content: "f的内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
    ItemState(
      type: 0,
      title: "标题g",
      content: "g的内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
    ItemState(
      type: 0,
      title: "标题h",
      content: "h的内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
    ItemState(
      type: 0,
      title: "标题i",
      content: "i的内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"),
  ];
  ctx.dispatch(ListActionCreator.initList(mockData));

}
