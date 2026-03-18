import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/constant/color/colors.dart';
import 'package:todoapp/provider/add_task_addprovider.dart';
import 'package:todoapp/utils/dialog.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To do app",
          style: TextStyle(color: Appcolor.textwhite),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.blue,
        onPressed: () => showAddTaskDialog(context),
        child: const Icon(Icons.add),
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          final tasks = taskProvider.tasks; // ✅ renamed variable
          if (tasks.isEmpty) {
            return const Center(
              child: Text("No task yet", style: TextStyle(color: Colors.white)),
            );
          }
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: ListTile(
                    title: Text(
                      tasks[index],
                      style: const TextStyle(color: Appcolor.textwhite),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        taskProvider.removeTask(index); // ✅ Cleaner approach
                      },
                      icon: const Icon(Icons.delete, color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
