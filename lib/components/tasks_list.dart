import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(
          title: 'Buy milk',
        ),
        TaskTile(
          title: 'Buy eggs',
        ),
        TaskTile(
          title: 'Buy detergent',
          checked: true,
        ),
      ],
    );
  }
}
