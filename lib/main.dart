import 'package:flutter/material.dart';

import 'views/todoscreen.dart';
import 'models/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data',
      home: TodosScreen(
        todos: List.generate(
            2,
            (i) => (i == 0)
                ? const Todo(
                    'JOIN ROOM ',
                    'A description of what needs to be done for Todo ',
                  )
                : const Todo(
                    'CREATE ROOM',
                    '....',
                  )),
      ),
    );
  }
}
