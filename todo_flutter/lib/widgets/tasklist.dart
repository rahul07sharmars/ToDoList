import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/tasktile.dart';
import 'package:todo_flutter/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy pen'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: task[index].name,
          isChecked: task[index].isDone,
          checkBoxCallback: (value) {
            setState(() {
              task[index].isDone = value;
            });
          },
        );
      },
      itemCount: task.length,
    );
    // children: [
    //   TaskTile(taskTitle: task[0].name,isChecked: task[0].isDone),
    //   TaskTile(taskTitle: task[1].name, isChecked: task[1].isDone),
    //   TaskTile(taskTitle: task[2].name, isChecked: task[2].isDone),

    // ],
  }
}
