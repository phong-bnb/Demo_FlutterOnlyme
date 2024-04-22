import 'package:demo_flutter/screen/createtodo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text('ToDo App'),
            Spacer(),
            Icon(
              Icons.calendar_today_rounded,
              color: Color.fromARGB(255, 251, 54, 120),
              size: 30.0,
            )
          ],
        ),
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        backgroundColor: Color.fromARGB(250, 147, 149, 211),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          color: Color.fromARGB(249, 222, 223, 245),
          child: Column(
            children: <Widget>[
              TodoItem(
                text: 'Todo 1',
                textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              TodoItem(
                text: 'Todo 2',
                textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              TodoItem(
                text: 'Todo 3',
                textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              TodoItem(
                text: 'Todo 3',
                textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  TodoItem(
      {required this.text,
      required this.backgroundColor,
      required this.textStyle});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 6), // Dịch chuyển bóng theo chiều dọc
          ),
        ],
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(text), // Text của todo
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.update),
                color: Color.fromARGB(255, 1, 253, 56), // Icon update
                onPressed: () {
                  // Xử lý khi nhấn nút update
                },
              ),
              IconButton(
                icon: Icon(Icons.create),
                color: Color.fromARGB(255, 22, 26, 255), // Icon update
                onPressed: () {
                  // Xử lý khi nhấn nút update
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red.withOpacity(1), // Icon delete
                onPressed: () {
                  // Xử lý khi nhấn nút delete
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
