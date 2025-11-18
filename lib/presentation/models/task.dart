


class Task {
  String title;
  bool isDone;

  Task({required this.title, this.isDone = false});

  Task toggleDone() {
    return Task(title: title, isDone: !isDone);
  }

}