import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/tasks_state.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<TasksState>(context).tasks;
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].name,
          checked: tasks[index].isDone,
          toggleCheckbox: (value) => Provider.of<TasksState>(
            context,
            listen: false,
          ).toggleTask(index),
        );
      },
      itemCount: tasks.length,
    );
  }
}
