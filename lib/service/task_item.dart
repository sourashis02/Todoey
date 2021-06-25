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
            return TasksTile(
              isChecked: taskbuild.tasks[index].isChecked,
              taskTitle: taskbuild.tasks[index].tasktitle,
              onChanged: (value) {
                // setState(() {
                //   widget.tasks[index].toggleCheckBox();
                // });
              },
            );
          },
          itemCount: taskbuild.tasks.length,
        );
      },
    );
  }
}
