import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({this.title, this.checked = false});

  final String title;
  final bool checked;

  @override
  _TaskTileState createState() => _TaskTileState(checked);
}

class _TaskTileState extends State<TaskTile> {
  _TaskTileState(this.checked);

  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: TextStyle(
          decoration:
              checked ? TextDecoration.lineThrough : TextDecoration.none,
          fontWeight: checked ? FontWeight.w500 : FontWeight.normal,
        ),
      ),
      trailing: TaskCheckbox(
        checked: checked,
        toggleCheckbox: (bool value) {
          setState(() {
            checked = value;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox({
    @required this.checked,
    @required this.toggleCheckbox,
  });

  final bool checked;
  final Function toggleCheckbox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckbox,
      value: checked,
    );
  }
}
