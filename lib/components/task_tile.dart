import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key key,
    @required this.title,
    @required this.checked,
    @required this.toggleCheckbox,
  }) : super(key: key);

  final String title;
  final bool checked;
  final Function toggleCheckbox;

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
        onChanged: toggleCheckbox,
        value: checked,
      ),
    );
  }
}
