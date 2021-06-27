import 'package:flutter/material.dart';
import 'package:todoey/service/task_data.dart';
import 'package:todoey/service/tasks_details.dart';
import 'package:provider/provider.dart';

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskListData>(
      builder: (context, taskbuild, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final tasktool = taskbuild.tasks[index];
            return TasksTile(
              isChecked: tasktool.isChecked,
              taskTitle: tasktool.tasktitle,
              onChanged: (value) {
                taskbuild.checkboxtrue(tasktool);
              },
              onlngPress: () {
                taskbuild.deletetask(index);
              },
            );
          },
          itemCount: taskbuild.tasks.length,
        );
      },
    );
  }
}
