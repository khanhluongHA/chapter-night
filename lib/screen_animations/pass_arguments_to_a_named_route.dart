import 'package:flutter/material.dart';
class Task {
  String title;
  String description;

  Task({required this.title, required this.description});
}

class TaskData {
  List<Task> tasks = [];
}



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const AddTaskScreen(),
        '/tasks': (context) => const TaskListScreen(),
      },
    );
  }
}

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Điều hướng đến màn hình danh sách công việc và truyền dữ liệu
            Navigator.pushNamed(
              context,
              '/tasks',
              arguments: Task(title: 'Sample Task', description: 'This is a sample task'),
            );
          },
          child: const Text('Add Task'),
        ),
      ),
    );
  }
}

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Nhận dữ liệu từ màn hình trước
    final Task task = ModalRoute.of(context)!.settings.arguments as Task;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Title: ${task.title}'),
            Text('Description: ${task.description}'),
          ],
        ),
      ),
    );
  }
}
