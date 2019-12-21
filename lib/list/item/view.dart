import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
    height: 120.0,
    color: Colors.white,
    child: GestureDetector(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //左侧图标
          Container(
            padding: const EdgeInsets.only(right: 5.0),
            child: Center(
              child: Icon(
                state.type == 1 ? Icons.account_circle : Icons.account_box,
                size: 50.0,
              ),
            ),
          ),
          //右侧
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //标题部分
                Container(
                  height: 30,
                  child: Text(
                    state.title,
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
                //内容部分
                Text(
                  state.content,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        dispatch(ItemActionCreator.onThemeChange());
      },
    ),
  );
}
