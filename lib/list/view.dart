import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {

  ListAdapter adapter = viewService.buildAdapter();

  return Scaffold(
      appBar: new AppBar(
        title: new Text('列表页'),
        backgroundColor: state.themeColor,
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: adapter.itemBuilder,
          itemCount: adapter.itemCount,
        ),
      ));
}
