import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/add_task_addprovider.dart';
import 'package:todoapp/widget/progresscard.dart';
import 'package:todoapp/utils/dialog.dart';
import 'package:todoapp/utils/drawer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final taskProvider = Provider.of<TaskProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,

        drawer: drawerwidget(backgroundColor: theme.cardColor),

        appBar: AppBar(
          elevation: 0,
          backgroundColor: theme.appBarTheme.backgroundColor,
          iconTheme: IconThemeData(color: theme.textTheme.bodyLarge?.color),
          title: Text(
            "My Task",
            style: TextStyle(
              color: theme.textTheme.bodyLarge?.color,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.search, color: theme.textTheme.bodyLarge?.color),
            const SizedBox(width: 10),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          shape: const CircleBorder(),
          splashColor: Colors.blue,
          onPressed: () => showAddTaskDialog(context),
          child: const Icon(Icons.add,color:Colors.black ,),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Tasks Overview",
                  style: TextStyle(
                    color: theme.textTheme.bodyLarge?.color, // dynamic
                    fontSize: 18,
                  ),
                ),
              ),

              ProgressCard(
                completed: taskProvider.tasks.where((t) => t.isdone).length,
                total: taskProvider.tasks.length,
              ),

              const SizedBox(height: 10),

              Expanded(
                child: taskProvider.tasks.isEmpty
                    ? Center(
                        child: Text(
                          "No task yet",
                          style: TextStyle(
                            color: theme.textTheme.bodyLarge?.color,
                          ),
                        ),
                      )
                    : ListView.separated(
                        itemCount: taskProvider.tasks.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final task = taskProvider.tasks[index];

                          return Container(
                            key: ValueKey(task.title),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: theme.brightness == Brightness.dark
                                    ? [
                                        Colors.deepPurple.shade800,
                                        Colors.deepPurple.shade600,
                                      ]
                                    : [
                                        Colors.blue.shade300,
                                        Colors.blue.shade500,
                                      ],
                              ),
                            ),
                            child: ListTile(
                              leading: Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    WidgetStateProperty.resolveWith<Color>((
                                      states,
                                    ) {
                                      if (states.contains(
                                        WidgetState.selected,
                                      )) {
                                        return Colors.green;
                                      }
                                      return Colors.white;
                                    }),
                                value: task.isdone,
                                onChanged: (_) =>
                                    taskProvider.toggleTask(index),
                              ),
                              title: Text(
                                task.title,
                                style: TextStyle(
                                  color: theme.textTheme.bodyLarge?.color,
                                  fontWeight: FontWeight.bold,
                                  decoration: task.isdone
                                      ? TextDecoration.lineThrough
                                      : null,
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: () => taskProvider.removeTask(index),
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.redAccent.shade200,
                                ),
                              ),
                            ),
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
