import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/controllers/cubit/cubit/task_cubit.dart';

void showAddDialog(BuildContext context, String newTask) {
     TextEditingController controller = TextEditingController(text: newTask);
    
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Add Task'),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: 'Task'),
        ),
        actions: [
          TextButton(
            onPressed: () {
            if (controller.text.isNotEmpty) {
              context.read<TaskCubit>().addTask(controller.text);
            }
            Navigator.pop(context);
          },

            child: Text('Add'),
          ),
        ],
      ),
    );
  }

  void showEditDialog(BuildContext context, int index, String currentTitle) {
    TextEditingController controller = TextEditingController(text: currentTitle);
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Edit'),
        content: TextField(
          controller: controller,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.read<TaskCubit>().editTask(index, controller.text);
              Navigator.pop(context);
            },
            child: Text('Edit'),
          ),
        ],
      ),
    );
  }