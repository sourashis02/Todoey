import 'package:flutter/material.dart';
import 'package:todoey/service/task.dart';

class TaskListData extends ChangeNotifier {
  List<Tasks> tasks = [
    Tasks(tasktitle: 'Buy Bread'),
    Tasks(tasktitle: 'Go  Gym'),
  ];

  void addNewtask(String newtasktitle) {
    final task = Tasks(tasktitle: newtasktitle);
    tasks.add(task);
    notifyListeners();
  }
}
