import 'package:flutter/material.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/service/task_item.dart';
import 'package:provider/provider.dart';
import 'package:todoey/service/task_data.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTasks(),
            );
          },
          child: Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: 30.0, top: 50.0, right: 30.0, bottom: 30.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '${Provider.of<TaskListData>(context).tasks.length} Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.0,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TaskItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
