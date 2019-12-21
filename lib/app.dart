
import 'package:fish_demo/store/state.dart';
import 'package:fish_demo/store/store.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'entrance/page.dart';
import 'grid/page.dart';
import 'list/page.dart';

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'entrance_page': EntrancePage(),
      'grid_page': GridPage(),
      'list_page': ListPage(),
    },
    visitor: (String path, Page<Object, dynamic> page) {
      /// 满足条件 Page<T> ，T 是 GlobalBaseState 的子类。
      if (page.isTypeof<GlobalBaseState>()) {
        /// 建立 AppStore 驱动 PageStore 的单向数据连接
        /// 1. 参数1 AppStore
        /// 2. 参数2 当 AppStore.state 变化时, PageStore.state 该如何变化
        page.connectExtraStore<GlobalState>(
          GlobalStore.store, (Object pagestate, GlobalState appState) {
          final GlobalBaseState p = pagestate;
          if (p.themeColor != appState.themeColor) {
            if (pagestate is Cloneable) {
              final Object copy = pagestate.clone();
              final GlobalBaseState newState = copy;
              newState.themeColor = appState.themeColor;
              return newState;
            }
          }
          return pagestate;
        });
      }
    },
  );

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('entrance_page', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
