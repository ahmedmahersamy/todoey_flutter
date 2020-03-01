
// the core task class 

class Task {

//task attributes
  final String name;
  bool isDone;
  Task({this.name , this.isDone = false});

//change the is done attribute to oppesite 
  void toggleDone (){
    isDone = !isDone;
  }


}