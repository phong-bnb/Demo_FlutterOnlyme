import 'package:demo_flutter/screen/createtodo.dart';
import 'package:demo_flutter/screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Flutter Demo',
    home: SafeArea(
        child: Scaffold(
      body: Home(),
    )),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MyHomePage(),
        '/creart': (context) => CreateTodo(title: 'create')
      },
    );
  }
}
