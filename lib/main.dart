import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todos/screens/home_screen.dart';
import 'package:todos/providers/todos_model.dart';

void main() => runApp(const TodosApp());

class TodosApp extends StatelessWidget {
  const TodosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodosModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todos',
        theme: ThemeData.dark(),
        home: const HomeScreen(),
      ),
    );
  }
}
