import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TasksState extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  int get allTasks {
    return _tasks.length;
  }

  int get unDoneTasks {
    return _tasks.where((task) => !task.isDone).length;
  }

  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }
}
