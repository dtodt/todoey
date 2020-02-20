import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TasksState extends ChangeNotifier {
  final List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks => _tasks;

  int get allTasks => _tasks.length;

  int get unDoneTasks => _tasks.where((task) => !task.isDone).length;

  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }
}
