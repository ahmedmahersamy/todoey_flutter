import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  final String taskTitle ;
  final bool isChecked ;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  TaskTile({this.taskTitle, this.isChecked ,this.checkBoxCallBack , this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    // list tile 
    return ListTile(
    //long press call back
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      /// this is short hand code for call back function
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        //on changed call back
        onChanged: checkBoxCallBack,
      ),
    );
  }
}


/*
toggleCheckBoxState: (bool newValue) {
          setState(() {
            isChecked = newValue;
          });
 */


