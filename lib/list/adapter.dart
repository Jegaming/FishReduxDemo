import 'package:fish_demo/list/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'item/component.dart';
import 'item/state.dart';

class ListAdapter extends DynamicFlowAdapter<ListState> {
  ListAdapter()
      : super(
          pool: <String, Component<Object>>{
            "MyItem": ItemComponent(),  //引用组件
          },
          connector: _ListConnector(),
        );
}

class _ListConnector extends ConnOp<ListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ListState state) {
    //判断ListState里面的items数据是否为空
    if (state.items?.isNotEmpty == true) {
      //若不为空，把item数据转化成ItemBean的列表
      return state.items
        .map<ItemBean>((ItemState data) => ItemBean('MyItem', data))
        .toList(growable: true);
    }else{
      //若为空，返回空列表
      return <ItemBean>[];
    }
  }

  @override
  void set(ListState state, List<ItemBean> items) {
    //把ItemBean的变化，修改到item的state的过程
    if (items?.isNotEmpty == true) {
      state.items = List<ItemState>.from(
        items.map<ItemState>((ItemBean bean) => bean.data).toList());
    } else {
      state.items = <ItemState>[];
    }
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
