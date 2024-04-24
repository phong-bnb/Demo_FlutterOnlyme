import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageSate createState() => _MyHomePageSate();
}

class _MyHomePageSate extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.menu,
              color: const Color.fromARGB(255, 0, 0, 0),
              size: 35,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: CircleAvatar(
                    child: Image.asset(
                      'assets/111.jpg',
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
