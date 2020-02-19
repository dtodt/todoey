import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/tasks_state.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksState>(
      builder: (context, taskState, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskState.tasks[index].name,
              checked: taskState.tasks[index].isDone,
              toggleCheckbox: (value) => Provider.of<TasksState>(
                context,
                listen: false,
              ).toggleTask(index),
            );
          },
          itemCount: taskState.allTasks,
        );
      },
    );
  }
}
