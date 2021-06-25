import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/service/task_data.dart';

class AddTasks extends StatelessWidget {
  final String mtask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontFamily: 'Poppins',
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            TextField(
              onChanged: (value) {
                mtask = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: FlatButton(
                onPressed: () {
                  // print(mtask);
                  // final task = Tasks(tasktitle: mtask);
                  Provider.of<TaskListData>(context, listen: false)
                      .addNewtask(mtask);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
