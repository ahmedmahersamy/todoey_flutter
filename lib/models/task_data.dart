import 'package:flutter/foundation.dart';
import './task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
/*
this a class for the operations on the tasks list data which notify the provider listeners
*/




// create dummy tasks list data
  List<Task> _tasksList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];


//this is a list type which make my list un modifaibale just make me view it 
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasksList);
  }
// get the tasks list length
  int get taskCount{
    return _tasksList.length;
  }

// add a task to the tasksList and notify the listeners
  void addTask (String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasksList.add(task);
    notifyListeners();
  }

// update the task done attribute by calling toggleDone function at the tasksList and notify the listeners
  void updateTask( Task task)
  {
      task.toggleDone();
      notifyListeners();
  }

// delete a task to the tasksList and notify the listeners
  void deleteTask(Task task){
    _tasksList.remove(task);
    notifyListeners();
  }
}