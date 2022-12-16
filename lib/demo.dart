import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Listener(
        child: Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),
        onPointerDown: (event) {
          print(event);
        },
        onPointerUp: (event) {
          print(event);
        },
        onPointerCancel: (event) {
          print(event);
        },
        onPointerHover: (event) {
          print(event);
        },
        onPointerMove: (event) {
          print(event);
        },
        onPointerSignal: (event) {
          print(event);
        },
      ),
    );
  }
}
