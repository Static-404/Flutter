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
        actions: [
          IconButton(
              onPressed:() {},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed:() {},
              icon: Icon(Icons.notification_add)
          ),
        ],
      ),
      body: _tasksWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: displayTaskPop,
        child:const Icon(Icons.add),
      ),
    );
  }

  Widget _todoList(){
    List tasks = _box!.values.toList();
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          var task = Task.fromMap(tasks[index]);
          void confirmCheckBox(){
            showDialog(context: context, builder: (BuildContext context,) {
              return AlertDialog(
                backgroundColor: Colors.green,
                title: const Text('Are you done with this task?'),
                actions: [
                  MaterialButton(
                    onPressed: (){
                      task.done = true;
                      _box!.putAt(index, task.toMap());
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: const Text('yes'),
                  ),
                  MaterialButton(
                    onPressed: (){
                      task.done = false;
                      _box!.putAt(index, task.toMap());
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: const Text('No'),
                  ),
                ],
              );
            });
          }
          void confirmDelete(){
            showDialog(context: context, builder: (BuildContext context,) {
              return AlertDialog(
                title: const Text('Are you sure you want to delete?'),
                actions: [
                  MaterialButton(
                    onPressed: (){
                      _box!.deleteAt(index);
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: const Text('yes'),
                  ),
                  MaterialButton(
                    onPressed: (){
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: const Text('No'),
                  ),
                ],
              );
            });
          }
          return ListTile(
            title: Text(task.todo),
            subtitle: Text(task.timeStamp.toString()),
            leading: task.done
                ? const Icon(
                    Icons.check_box,
                    color: Colors.green,
                  )
                : const Icon(Icons.check_box_outline_blank),
            onTap: (){
              return confirmCheckBox();
            },
            onLongPress: (){
              // return confirmDelete();
            },
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: confirmDelete,
            ),
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
        return const Center(child: CircularProgressIndicator());
      }
    });
  }



  displayTaskPop(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: const Text('Add a note'),
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
