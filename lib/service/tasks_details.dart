import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  TasksTile({
    required this.isChecked,
    required this.taskTitle,
    required this.onChanged,
    required this.onlngPress,
  });
  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?>? onChanged;
  final GestureLongPressCallback? onlngPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
      onLongPress: onlngPress,
    );
  }
}
