import 'package:fish_demo/store/reducer.dart';
import 'package:fish_redux/fish_redux.dart';
import 'state.dart';

class GlobalStore {
  static Store<GlobalState> _globalStore;

  static Store<GlobalState> get store =>
    _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());

}
