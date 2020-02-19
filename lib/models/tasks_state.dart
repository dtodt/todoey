import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TasksState extends ChangeNotifier {
  final List<Task> tasks = [];

  int allTasks() {
    return tasks.length;
  }

  int unDoneTasks() {
    return tasks.where((task) => !task.isDone).length;
  }

  void addTask(String name) {
    tasks.add(Task(name: name));
    notifyListeners();
  }

  void toggleTask(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }
}
