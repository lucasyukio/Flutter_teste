import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Estudar Flutter", true],
      ["Terminar o App", false]
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIIST");
  }

  void updateDataBase() {
    _mybox.put("TODOLIIST", toDoList);
  }
}
