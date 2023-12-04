class Task {
  String _title;
  String _description;
  DateTime _date;
  bool _isDone;

  Task({
    required String title,
    required String description,
    required DateTime date,
    bool isDone = false,
  })  : this._title = title,
        this._description = description,
        this._date = date,
        this._isDone = isDone;

  String get title => _title;
  String get description => _description;
  DateTime get date => _date;
  bool get isDone => _isDone;

  set title(String title) => _title = title;
  set description(String description) => _description = description;
  set date(DateTime date) => _date = date;
  set isDone(bool isDone) => _isDone = isDone;
}


class TaskManager {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
  }

  void removeTask(Task task) {
    _tasks.remove(task);
  }
}

void main() {
  TaskManager taskManager = TaskManager();

  Task task1 = Task(
    title: 'Task 1',
    description: 'Description 1',
    date: DateTime.now(),
  );

  taskManager.addTask(task1);

  print(taskManager.tasks); // Output: [Instance of 'Task']

  taskManager.removeTask(task1);

  print(taskManager.tasks); // Output: []
}


