import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/constant/color/colors.dart';
import 'package:todoapp/constant/image/image_const.dart';
import 'package:todoapp/provider/add_task_addprovider.dart';
import 'package:todoapp/utils/dialog.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 2.0,right: 2),
            child: CircleAvatar(foregroundImage: AssetImage(google)),
          ),
          title: const Text(
            "My Task",
            style: TextStyle(
              color: Appcolor.textwhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          shape: const CircleBorder(),
          splashColor: Colors.blue,
          onPressed: () => showAddTaskDialog(context),
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            // Optional header widget
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Tasks Overview",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            Expanded(
              child: Consumer<TaskProvider>(
                builder: (context, taskProvider, child) {
                  final tasks = taskProvider.tasks;
                  if (tasks.isEmpty) {
                    return const Center(
                      child: Text(
                        "No task yet",
                        style: TextStyle(color: Colors.white),
                      ),
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
                                taskProvider.removeTask(index);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
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
    );
  }
}
