part of 'task_cubit.dart';

@immutable
sealed class TaskState {
  final List<Task> tasks;

  const TaskState(this.tasks);
}

class TaskInitial extends TaskState {
  TaskInitial() : super([]);
}

class TaskUpdate extends TaskState {
  const TaskUpdate(super.tasks);
}
