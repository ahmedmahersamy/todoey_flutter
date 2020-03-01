import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/tasks_list.dart';
import '../screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';



class TasksScreen extends StatelessWidget {
// taskscreen which display all tasks 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      //float action button 
      floatingActionButton: FloatingActionButton(
        //call back function to show a modal bottom sheet
        onPressed: () {
         //showModalBottomSheet
          showModalBottomSheet(
          //attributes
            context: context,
            builder: (context) => AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      //body of scaffold
      body: 
      //barent column
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //circle avatare
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  // sized box to give a height
                  SizedBox(
                    height: 10.0,
                  ),
                  //text widget 
                  Text(
                    'Todoey',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700)),
                  //text widget of tasks count
                  Text(
                    //use provider of taskData to get the count 
                    '${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            // expanded fill the available space along the main axis
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)
                        )
                        ),
                //  task list screen 
                child: TasksList(),
              ),
            ),
          ]),
    );
  }
}







/// short hand code for function of single line
  /// Widget buildButtomSheet(BuildContext context) => Container();

  /// full function decleration
  /*
  Widget buildButtomSheet(BuildContext context) {
    return Container(
      child: Center(
          child: Text('this is a buttom sheet')),
    );
  }*/
