import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key key, this.title, this.checked = false}) : super(key: key);

  final String title;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration:
              checked ? TextDecoration.lineThrough : TextDecoration.none,
          fontWeight: checked ? FontWeight.w500 : FontWeight.normal,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) {},
        value: checked,
      ),
    );
  }
}
