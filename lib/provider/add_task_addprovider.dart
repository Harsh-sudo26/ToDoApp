import 'package:flutter/material.dart';
import '../model/task_model.dart';

class TaskProvider extends ChangeNotifier {
  final List<taskin> _tasks = [];

  List<taskin> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(taskin(title: title,));
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].isdone = !_tasks[index].isdone;
    notifyListeners();
  }
}