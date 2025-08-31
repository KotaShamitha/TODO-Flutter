
import 'package:hive/hive.dart';

class TodoDataBase {
  List TodoList = [
    ["TODO", false],
    ["TODO", false],
    ["TODO", false],
    ["TODO", false],
    ["TODO", false],
  ];

  final _myBox = Hive.box('mybox');

  void createData() {
    TodoList = [
      ["Reading Books", false],
    ];
  }

  void loadData() {
    TodoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", TodoList);
  }
}