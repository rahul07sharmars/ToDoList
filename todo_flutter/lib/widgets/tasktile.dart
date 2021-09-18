// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallback});
  // void checkBoxCallBack (bool value) {
  //       setState((){isChecked=value;});
  //     }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: (value) {
            checkBoxCallback(value);
          },
          // onChanged: toggleCheckBoxState(isChecked),
        ));
  }
}

// TaskCheckBox(isChecked: isChecked, toggleCheckBoxState: 
// (bool value) {
//             setState(() {
//               isChecked = value;
//             });
//           },)

// class TaskCheckBox extends StatelessWidget {
//   final bool isChecked;
//   final Function toggleCheckBoxState ;
//   const TaskCheckBox({required this.isChecked , required this.toggleCheckBoxState});
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
