import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: kTextFieldBorder,
                enabledBorder: kTextFieldBorder,
                focusedBorder: kTextFieldBorder,
              ),
              onChanged: (value) {
                setState(() {
                  taskName = value;
                });
              },
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25.0,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pop(context, taskName);
              },
              padding: EdgeInsets.symmetric(vertical: 15.0),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(40.0),
      ),
      color: Color(0xff757575),
    );
  }
}
