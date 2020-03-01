import 'package:flutter/material.dart';
import './tasks_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
// the view of tasks tist with provider

  @override
  Widget build(BuildContext context) {
    // consumer is style of provider packages  
    return Consumer<TaskData>(
      builder: (context,taskData ,child) {
        //listview builder => load just the viewing list on screen not the all list 
        return ListView.builder(
          itemBuilder: (context, index) {
            // task is a variable made for dont redundant the "taskData.tasks[index]" every line
            final task =taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              //callback when tap the check mark at the tile
              checkBoxCallBack: (newValue) {
                taskData.updateTask(task);
              },
               //callback when long press the tile to delete

              longPressCallBack: (){
                taskData.deleteTask(task);
              },
            );
          },
          //get the tasks list count
          itemCount: taskData.taskCount,
        );
      },
      ) ;
  }
}


/*
  void checkBoxCallBack(bool newValue) {
    setState(() {
      isChecked = newValue;
    });
  }
*/ 


/*
return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: provider.of<TaskData>(context).tasks[index].name,
              isChecked: provider.of<TaskData>(context).tasks[index].isDone,
              checkBoxCallBack: (newValue) {
//              setState(() {
//                widget.tasks[index].toggleDone();
//              });
              },
            );
          },
          itemCount: provider.of<TaskData>(context).tasks.length,
        );
 */