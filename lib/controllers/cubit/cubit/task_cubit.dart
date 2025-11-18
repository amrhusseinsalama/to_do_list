import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/presentation/models/task.dart';
part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  void addTask(String title) {
    emit(TaskUpdate(List<Task>.from(state.tasks)..add(Task(title: title))));
  }

  void editTask(int index, String newTitle) {
    emit(
      TaskUpdate(List<Task>.from(state.tasks)..[index] = Task(title: newTitle)),
    );
  }

  void deleteTask(int index) {
    emit(TaskUpdate(List<Task>.from(state.tasks)..removeAt(index)));
  }

  void toggleTask(int index) {
    emit(
      TaskUpdate(
        List<Task>.from(state.tasks)..[index] = state.tasks[index].toggleDone(),
      ),
    );
  }
}
