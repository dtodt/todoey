import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0
              ),
            ),
            TextField()
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
      ),
      color: Color(0xff757575),
    );
  }
}
