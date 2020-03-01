import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
// add task screen 
class AddTaskScreen extends StatelessWidget{  
@override
  Widget build(BuildContext context) {
//local attribute
  String newTaskTitle;

//parent container 
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          )
        ),
// column contain TextField ,FlatButton
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
// text on the top of column
            Text(
            'Add Task ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent
            ),
            ),
//textField to write the task name 
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
                newTaskTitle = newValue;
              },
            ),
//add button confirmation on the added task
            FlatButton(
              child: Text('Add',style: TextStyle(
                color: Colors.white
              ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: (){

                //use the provider of TaskData to add new task to the list with the new name
                Provider.of<TaskData>(context ,listen: false).addTask(newTaskTitle);

                //close the popup (add task screen) from the screen after click on the 'add' flat button
                Navigator.pop(context);
              },
            ),
          ]
        ),
      ),
    );
  }

}