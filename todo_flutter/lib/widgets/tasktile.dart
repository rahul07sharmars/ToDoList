// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  // void checkBoxCallBack (bool value) {
  //       setState((){isChecked=value;});
  //     }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task.',
      style: TextStyle(decoration: isChecked? TextDecoration.lineThrough:null,),
      ),
      trailing: TaskCheckBox(isChecked: isChecked, toggleCheckBoxState:  (bool value) {
            setState(() {
              isChecked = value;
            });
          },)
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckBoxState ;
  const TaskCheckBox({required this.isChecked , required this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: toggleCheckBoxState(isChecked) ,
    );
  }
}
