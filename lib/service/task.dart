import 'package:flutter/cupertino.dart';

class Tasks {
  Tasks({this.isChecked = false, required this.tasktitle});
  late bool isChecked;
  final String tasktitle;

  ValueChanged<bool?>? toggleCheckBox() {
    isChecked = !isChecked;
  }
}
