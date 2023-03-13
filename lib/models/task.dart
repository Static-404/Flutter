class Task {
  String todo;
  DateTime timeStamp;
  bool done;

  Task({required this.todo, required this.timeStamp, required this.done});

  Map toMap() {
    return {
      'todo': todo,
      'timeStamp': timeStamp,
      'done': done,
    };
  }

  factory Task.fromMap(Map task) {
    return Task(
        todo: task['todo'], timeStamp: task['timeStamp'], done: task['done']);
  }
}
