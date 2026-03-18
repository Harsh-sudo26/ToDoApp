import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/add_task_addprovider.dart';

void showAddTaskDialog(BuildContext context) {
  final controller = TextEditingController();

  showDialog(
    context: context,
    builder: (dialogContext) {
      return AlertDialog(
        title: const Text("Add Task"),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: "Enter task"),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            style: ButtonStyle(animationDuration: Duration(seconds: 2)),
            onPressed: () {
              final text = controller.text.trim();
              if (text.isNotEmpty) {
                Provider.of<TaskProvider>(context, listen: false).addTask(text);
                Navigator.of(dialogContext).pop();
              }
            },
            child: const Text("Add"),
          ),
        ],
      );
    },
  );
}
