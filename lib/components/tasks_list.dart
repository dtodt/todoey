import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    @required this.tasks,
    @required this.toggleCheckbox,
  });

  final List<Task> tasks;
  final Function toggleCheckbox;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].name,
          checked: tasks[index].isDone,
          toggleCheckbox: (value) => toggleCheckbox(index),
        );
      },
      itemCount: tasks.length,
    );
  }
}
