import 'package:flutter/material.dart';
import 'package:pantallas/todo_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tareas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              title: const Center(
                child: Text(
                  'FEAR OF GOD',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "times new roman",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TodoList(),
            ),
          ],
        ),
      ),
    );
  }
}
