import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/constant/color/colors.dart';
import 'package:todoapp/constant/image/image_const.dart';
import 'package:todoapp/provider/add_task_addprovider.dart';
import 'package:todoapp/screen/setting.dart';
import 'package:todoapp/utils/dialog.dart';
import 'package:todoapp/widget/drawer.dart';
import 'package:todoapp/widget/progresscard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,

        drawer: drawerwidget(backgroundColor: Colors.white, ),

        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 255, 255, 255),
          ),

          title: const Text(
            "My Task",
            style: TextStyle(
              color: Appcolor.textwhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          centerTitle: true,

          actions: [
            const Icon(Icons.search, color: Colors.white),
            const SizedBox(width: 10),

            const Padding(
              padding: EdgeInsets.all(8.0),
             
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          shape: const CircleBorder(),
          splashColor: Colors.blue,
          onPressed: () => showAddTaskDialog(context),
          child: const Icon(Icons.add),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Tasks Overview",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),

              Consumer<TaskProvider>(
                builder: (context, taskProvider, child) {
                  final total = taskProvider.tasks.length;
                  final completed = taskProvider.tasks
                      .where((t) => t.isdone)
                      .length;
                  return ProgressCard(completed: completed, total: total);
                },
              ),

              const SizedBox(height: 10),

              Expanded(
                child: Consumer<TaskProvider>(
                  builder: (context, taskProvider, child) {
                    final tasks = taskProvider.tasks;

                    if (tasks.isEmpty) {
                      return const Center(
                        child: Text(
                          "No task yet",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      );
                    }

                    return ListView.separated(
                      itemCount: tasks.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        final task = tasks[index];

                        return Container(
                          key: ValueKey(task.title),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(198, 46, 82, 211),
                                Color.fromARGB(255, 103, 69, 205),
                              ],
                            ),
                          ),
                          child: ListTile(
                            leading: Checkbox(
                              checkColor: Colors.white,
                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                (states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return Colors.green;
                                  }
                                  return Colors.white;
                                },
                              ),
                              value: task.isdone,
                              onChanged: (_) => taskProvider.toggleTask(index),
                            ),
                            title: Text(
                              task.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto',
                                decoration: task.isdone
                                    ? TextDecoration.lineThrough
                                    : null,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () => taskProvider.removeTask(index),
                              icon: const Icon(
                                Icons.delete,
                                color: Color.fromARGB(255, 220, 59, 59),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
