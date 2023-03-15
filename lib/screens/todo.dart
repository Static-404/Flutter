import 'package:firstapp/models/task.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {

  double? _deviceHeight, _deviceWidth;
  String? content;
  Box? _box;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviceHeight! * 0.1,
        title: const Text('Daily Planner'),

      ),
      body: _tasksWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: displayTaskPop,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _todoList(){
    List tasks = _box!.values.toList();
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          var task = Task.fromMap(tasks[index]);
          return ListTile(
            title: Text(task.todo),
            subtitle: Text(task.timeStamp.toString()),
            leading: task.done
                ? Icon(
                    Icons.check_box,
                    color: Colors.green,
                  )
                : Icon(Icons.check_box_outline_blank),
            onTap: (){
              task.done = !task.done;
              _box!.putAt(index, task.toMap());
              setState(() {});
            },
            onLongPress: (){
              // showDialog(context: context, builder: (BuildContext context){
              //   return AlertDialog(
              //     title: Text('Are you sure you want to delete?'),
              //   )
              // });
              _box!.deleteAt(index);
              setState(() {});
            },
          );

    });
  }
  Widget _tasksWidget(){
    return FutureBuilder(
      future: Hive.openBox("tasks"),
        builder: (BuildContext context, AsyncSnapshot snapshot){
      if(snapshot.hasData){
        _box = snapshot.data;
        return _todoList();
      }else{
        return Center(child: const CircularProgressIndicator());
      }
    });
  }

  displayTaskPop(){
    showDialog(context: context, builder: (BuildContext _context){
      return AlertDialog(
        title: Text('Add a note'),
        content: TextField(
          onSubmitted: (value){

            if(content != null){
              var task = Task(
                  todo: content!,
                  timeStamp: DateTime.now(),
                  done: false);
              _box!.add(task.toMap());
              setState(() {
                print(value);
                Navigator.pop(context);
              });
            }

          },
          onChanged: (value){
            setState(() {
              content = value;
              print(value);
            });
          },
        ),
      );
    });
  }

}
