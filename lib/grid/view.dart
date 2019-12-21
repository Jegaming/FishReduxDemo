import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(GridState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      title: new Text('Grid页面'),
      backgroundColor: state.themeColor,
    ),
    body: new GridView.count(
      //列数
      crossAxisCount: 2,
      // 左右间隔
      crossAxisSpacing: 20.0,
      // 上下间隔
      mainAxisSpacing: 20.0,
      //宽高比
      childAspectRatio: 1 / 1,
      padding: EdgeInsets.all(20),
      children: new List.generate(state.models.length, (index) {
        return Center(
          child: Card(
            color: Colors.lightBlueAccent,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(100),
              onTap: () {
                dispatch(GridActionCreator.onOpenList());
              },
              child: Container(
                width: 200,
                height: 200,
                child: Center(
                  child: Text(state.models[index].name),
                ),
              ),
            ),
          ));
      }),
    ),
  );
}
