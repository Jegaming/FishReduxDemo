import 'model.dart';

class Api {
  factory Api() {
    return _get();
  }

  static Api _instance;

  Api._internal() {
    //init Api instance
  }

  static _get() {
    if (_instance == null) {
      _instance = Api._internal();
    }
    return _instance;
  }


  List<GridModel> getGridData() {
    return [
      GridModel(name: "第一块"),
      GridModel(name: "第二块"),
      GridModel(name: "第三块"),
      GridModel(name: "第四块"),
      GridModel(name: "第五块"),
      GridModel(name: "第六块"),
      GridModel(name: "第七块"),
      GridModel(name: "第八块"),
      GridModel(name: "第九块"),
      GridModel(name: "第十块"),
    ];
  }
}
