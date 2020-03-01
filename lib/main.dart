import 'package:flutter/material.dart';
import './screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import './models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    //use the ChangeNotifierProvider to access the TaskData provider from the beginning the widget tree
    return ChangeNotifierProvider(
      create:(context) =>TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }

}
