import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/controllers/cubit/cubit/task_cubit.dart';
import 'package:to_do_list/presentation/models/drawer_item.dart';
import 'package:to_do_list/presentation/widgets/drawer_tile.dart';
import 'package:to_do_list/presentation/widgets/show_dialogs.dart';
import 'package:to_do_list/presentation/widgets/task_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String newTask = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/drawer.png",
                    fit: BoxFit.cover,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: drawerItems.length,
                  itemBuilder: (context, index) =>
                      DrawerTile(item: drawerItems[index]),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Text('Tasks'),
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down)),
          ],
        ),
      ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          final tasks = state.tasks;
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (_, index) => TaskTile(
              task: tasks[index],
              onChanged: (_) => context.read<TaskCubit>().toggleTask(index),
              onDelete: () => context.read<TaskCubit>().deleteTask(index),
              onEdit: () => showEditDialog(context, index, tasks[index].title),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddDialog(context, newTask),
        child: Icon(Icons.add),
      ),
    );
  }
}
